import 'package:flutter/material.dart';
import 'package:firebase_phone_auth_testing/themes/tokens/color_codes.dart';

class AppColors {
  const AppColors._();

  static const Color primary = Color(ColorCodes.primary);
  static const Color primaryShade1 = Color(ColorCodes.primaryShade1);
  static const Color primaryShade2 = Color(ColorCodes.primaryShade2);

  static const Color inputContainer = Color(ColorCodes.inputContainer);
  static const Color inputContainerActive =
      Color(ColorCodes.inputContainerActive);

  static const Color secondary = Color(ColorCodes.secondary);

  static const Color warning = Color(ColorCodes.warning);
  static const Color success = Color(ColorCodes.success);
  static const Color error = Color(ColorCodes.error);

  static const Color inactive = Color(ColorCodes.inactive);
  static const Color inactiveContainer = Color(ColorCodes.inactiveContainer);
  static const Color divider = Color(ColorCodes.divider);

  static const Color background = Color(ColorCodes.background);
  static const Color sheet = Color(ColorCodes.sheet);

  static const Color regularText = Color(ColorCodes.regularText);
  static const Color secondaryText = Color(ColorCodes.secondaryText);
  static const Color tertiaryText = Color(ColorCodes.tertiaryText);

  static const Color onPrimary = Color(ColorCodes.onPrimary);
  static const Color onSecondary = Color(ColorCodes.onSecondary);
  static const Color onError = Color(ColorCodes.onError);

  static const Color transparent = Colors.transparent;

  static const Color onWarning = regularText;
  static const Color onSuccess = regularText;
}
