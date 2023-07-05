import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mobile_auth_status.freezed.dart';

@freezed
abstract class MobileAuthStatus with _$MobileAuthStatus {
  const factory MobileAuthStatus.reset(
      String? verificationId, int? resendToken) = _Initial;
  const factory MobileAuthStatus.completed(PhoneAuthCredential credential) =
      _Completed;
  const factory MobileAuthStatus.codeSent(
      String verificationId, int? resendToken) = _CodeSent;
  const factory MobileAuthStatus.otpTimeout(String verificationId) =
      _OtpTimeout;
}
