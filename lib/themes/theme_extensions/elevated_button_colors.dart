import 'package:flutter/material.dart';
import 'package:firebase_phone_auth_testing/themes/foundations/foundations.dart';

@immutable
class ElevatedButtonColors extends ThemeExtension<ElevatedButtonColors> {
  final Color? textColor, backgroundColor;

  const ElevatedButtonColors(
      {required this.textColor, required this.backgroundColor});

  @override
  ThemeExtension<ElevatedButtonColors> copyWith(
          {Color? textColor, Color? backgroundColor}) =>
      ElevatedButtonColors(
          textColor: textColor ?? this.textColor,
          backgroundColor: backgroundColor ?? this.backgroundColor);

  @override
  ThemeExtension<ElevatedButtonColors> lerp(
      covariant ThemeExtension<ElevatedButtonColors>? other, double t) {
    if (other is! ElevatedButtonColors) {
      return this;
    }
    return ElevatedButtonColors(
      textColor: Color.lerp(textColor, other.textColor, t),
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
    );
  }

  static const light = ElevatedButtonColors(
    textColor: AppColors.onPrimary,
    backgroundColor: AppColors.primary,
  );
}
