import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_phone_auth_testing/constants/constants.dart';
import 'package:firebase_phone_auth_testing/extensions/extensions.dart';
import 'package:firebase_phone_auth_testing/features/authentication/providers/mobile_verification_provider.dart';
import 'package:firebase_phone_auth_testing/features/shared/repositories/user_repository_provider.dart';
import 'package:firebase_phone_auth_testing/features/shared/shared.dart';
import 'package:firebase_phone_auth_testing/services/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_data_provider.g.dart';

@riverpod
class UserData extends _$UserData {
  @override
  Future<User?> build() async {
    // Listening to user data changes
    _listenUserDataChanges();

    // Listening to timeouts
    _listenSMSCodeTimeoutChanges();

    // Mobile auth changes
    _listenMobileAuthChanges();

    final firebaseUserAccount = await ref.watch(
      firebaseUserAccountProvider.selectAsync((data) => data),
    );

    return firebaseUserAccount;
  }

  Future<void> onSubmitPhoneNumber(String phoneNumber,
      {int? forceResendingToken}) async {
    state = const AsyncLoading();

    final authRepository = ref.watch(userRepositoryProvider);
    final results = await authRepository.onSubmitPhoneNumber(phoneNumber,
        forceResendingToken: forceResendingToken);

    results.fold((exception) {
      showErrorMessage(exception.getErrorMessage(navigatorKey.currentContext!));
      KVStore.delete(SharedPreferencesKeys.kUserTokenKey, secured: true);
    }, (mobileVerification) {
      ref.watch(oTPTimerProvider.notifier).start();

      ref
          .watch(mobileVerificationProvider.notifier)
          .onChange(mobileVerification);
    });

    state = const AsyncData(null);
  }

  Future<void> onSubmitSMSCode(String smsCode, String verificationId) async {
    state = const AsyncLoading();

    final authRepository = ref.watch(userRepositoryProvider);
    final results =
        await authRepository.onSubmitSMSCode(smsCode, verificationId);

    results.fold((exception) {
      showErrorMessage(exception.getErrorMessage(navigatorKey.currentContext!));
      KVStore.delete(SharedPreferencesKeys.kUserTokenKey, secured: true);
      state = const AsyncData(null);
    }, (user) {
      state = AsyncData(user);
    });
  }

  Future<void> onLogout() async {
    state = const AsyncLoading();

    final authRepository = ref.watch(userRepositoryProvider);
    final results = await authRepository.onLogout();

    results.fold((exception) {
      showErrorMessage(exception.getErrorMessage(navigatorKey.currentContext!));
      KVStore.delete(SharedPreferencesKeys.kUserTokenKey, secured: true);
      state = const AsyncData(null);
    }, (user) {
      state = AsyncData(user);
    });
  }

  void _listenUserDataChanges() {
    ref.listenSelf((previous, next) async {
      if (next.isLoading) return;
      if (next.hasError) {
        KVStore.delete(SharedPreferencesKeys.kUserTokenKey, secured: true);
        return;
      }

      final newUser = next.requireValue;

      if (newUser != null) {
        final token = await newUser.getIdToken();
        ref.watch(oTPTimerProvider.notifier).stop();
        KVStore.write(SharedPreferencesKeys.kUserTokenKey, token,
            secured: true);
      } else {
        KVStore.delete(SharedPreferencesKeys.kUserTokenKey, secured: true);
      }
    });
  }

  void _listenSMSCodeTimeoutChanges() {
    ref.listen(oTPTimerProvider, (previous, next) {
      final newTimeInSec = next;
      if (newTimeInSec == Durations.otpTimeoutInSec.inSeconds) {
        ref.read(mobileVerificationProvider).whenOrNull(
          codeSent: (verificationId, resendToken) {
            ref
                .watch(mobileVerificationProvider.notifier)
                .reset(verificationId, resendToken);
          },
        );
      }
    });
  }

  void _listenMobileAuthChanges() {
    ref.listen(mobileVerificationProvider, (previous, next) {
      final mobileAuth = next;
      mobileAuth.whenOrNull();
    });
  }
}
