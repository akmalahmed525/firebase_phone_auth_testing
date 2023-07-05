import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:firebase_phone_auth_testing/constants/constants.dart';
import 'package:firebase_phone_auth_testing/features/shared/models/mobile_auth_status.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_repository_provider.g.dart';

abstract class BaseUserRepository {
  Future<Either<FirebaseAuthException, MobileAuthStatus>> onSubmitPhoneNumber(
      String phoneNumber,
      {int? forceResendingToken});
  Future<Either<FirebaseAuthException, User?>> onSubmitSMSCode(
      String smsCode, String verificationId);
  Future<Either<FirebaseAuthException, User?>> onLogout();
}

class UserRepository extends BaseUserRepository {
  @override
  Future<Either<FirebaseAuthException, MobileAuthStatus>> onSubmitPhoneNumber(
      String phoneNumber,
      {int? forceResendingToken}) async {
    Completer<Either<FirebaseAuthException, MobileAuthStatus>> completer =
        Completer<Either<FirebaseAuthException, MobileAuthStatus>>();

    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        timeout: Durations.otpTimeoutInSec,
        forceResendingToken: forceResendingToken,
        verificationCompleted: (PhoneAuthCredential credential) {
          completer.complete(Right(MobileAuthStatus.completed(credential)));
        },
        verificationFailed: (FirebaseAuthException authException) {
          completer.complete(Left(authException));
        },
        codeSent: (String verificationId, int? resendToken) {
          completer.complete(
              Right(MobileAuthStatus.codeSent(verificationId, resendToken)));
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          if (!completer.isCompleted) {
            completer
                .complete(Right(MobileAuthStatus.otpTimeout(verificationId)));
          }
        });

    return completer.future;
  }

  @override
  Future<Either<FirebaseAuthException, User?>> onSubmitSMSCode(
      String smsCode, String verificationId) async {
    try {
      FirebaseAuth auth = FirebaseAuth.instance;
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: verificationId, smsCode: smsCode);

      await auth.signInWithCredential(credential);

      return Right(FirebaseAuth.instance.currentUser);
    } on FirebaseAuthException catch (authException) {
      Logger().e(authException);
      return Left(authException);
    } catch (e) {
      Logger().e(e);
      return Left(FirebaseAuthException(code: ''));
    }
  }

  @override
  Future<Either<FirebaseAuthException, User?>> onLogout() async {
    try {
      await FirebaseAuth.instance.signOut();
      return const Right(null);
    } on FirebaseAuthException catch (authException) {
      return Left(authException);
    }
  }
}

@riverpod
UserRepository userRepository(UserRepositoryRef ref) {
  return UserRepository();
}
