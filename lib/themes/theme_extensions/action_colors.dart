import 'package:flutter/material.dart';
import 'package:firebase_phone_auth_testing/themes/foundations/foundations.dart';

@immutable
class ActionColors extends ThemeExtension<ActionColors> {
  final Color? success, warning, error;
  final Color? onSuccess, onWarning, onError;

  const ActionColors(
      {required this.success,
      required this.warning,
      required this.error,
      required this.onSuccess,
      required this.onWarning,
      required this.onError});

  @override
  ThemeExtension<ActionColors> copyWith(
          {Color? success,
          Color? warning,
          Color? error,
          Color? onSuccess,
          Color? onWarning,
          Color? onError}) =>
      ActionColors(
        success: success ?? this.success,
        warning: warning ?? this.warning,
        error: error ?? this.error,
        onSuccess: onSuccess ?? this.onSuccess,
        onWarning: onWarning ?? this.onWarning,
        onError: onError ?? this.onError,
      );

  @override
  ThemeExtension<ActionColors> lerp(
      covariant ThemeExtension<ActionColors>? other, double t) {
    if (other is! ActionColors) {
      return this;
    }
    return ActionColors(
      success: Color.lerp(success, other.success, t),
      warning: Color.lerp(warning, other.warning, t),
      error: Color.lerp(error, other.error, t),
      onSuccess: Color.lerp(onSuccess, other.onSuccess, t),
      onWarning: Color.lerp(onWarning, other.onWarning, t),
      onError: Color.lerp(onError, other.onError, t),
    );
  }

  static const light = ActionColors(
    success: AppColors.success,
    onSuccess: AppColors.onSuccess,
    warning: AppColors.warning,
    onWarning: AppColors.onWarning,
    error: AppColors.error,
    onError: AppColors.onError,
  );
}
