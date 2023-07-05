import 'package:firebase_phone_auth_testing/features/shared/shared.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'mobile_verification_provider.g.dart';

@riverpod
class MobileVerification extends _$MobileVerification {
  @override
  MobileAuthStatus build() {
    return const MobileAuthStatus.reset(null, null);
  }

  void onChange(MobileAuthStatus authStatus) {
    state = authStatus;
  }

  void reset(String verificationId, int? resendToken) {
    state = MobileAuthStatus.reset(verificationId, resendToken);
  }
}
