import 'dart:async';

import 'package:firebase_phone_auth_testing/constants/constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'otp_timer_provider.g.dart';

@Riverpod(keepAlive: true)
class OTPTimer extends _$OTPTimer {
  Timer? _timer;

  @override
  int build() {
    return Durations.otpTimeoutInSec.inSeconds;
  }

  void start() {
    if (_timer != null && _timer!.isActive) {
      return;
    }

    _timer ??= Timer.periodic(const Duration(seconds: 1), (_) {
      state--;
      if (state == 0) {
        stop();
      }
    });
  }

  void stop() {
    _timer?.cancel();
    _timer = null;
    state = Durations.otpTimeoutInSec.inSeconds;
  }
}
