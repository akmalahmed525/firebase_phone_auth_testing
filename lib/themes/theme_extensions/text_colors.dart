import 'package:flutter/material.dart';
import 'package:firebase_phone_auth_testing/themes/foundations/foundations.dart';

@immutable
class TextColors extends ThemeExtension<TextColors> {
  final Color? regular, secondary, tertiary;

  const TextColors(
      {required this.regular, required this.secondary, required this.tertiary});

  @override
  ThemeExtension<TextColors> copyWith(
          {Color? regular, Color? secondary, Color? tertiary}) =>
      TextColors(
          regular: regular ?? this.regular,
          secondary: secondary ?? this.secondary,
          tertiary: tertiary ?? this.tertiary);

  @override
  ThemeExtension<TextColors> lerp(
      covariant ThemeExtension<TextColors>? other, double t) {
    if (other is! TextColors) {
      return this;
    }
    return TextColors(
        regular: Color.lerp(regular, other.regular, t),
        secondary: Color.lerp(secondary, other.secondary, t),
        tertiary: Color.lerp(tertiary, other.tertiary, t));
  }

  static const light = TextColors(
      regular: AppColors.regularText,
      secondary: AppColors.secondaryText,
      tertiary: AppColors.tertiaryText);
}
