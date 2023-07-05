import 'package:flutter/material.dart';

import 'foundations/color_schemes.dart';
import 'foundations/foundations.dart';
import 'theme_extensions/action_colors.dart';
import 'theme_extensions/elevated_button_colors.dart';
import 'theme_extensions/text_colors.dart';

@immutable
class AppTheme {
  const AppTheme._();

  static ThemeData get lightTheme => ThemeData(
        useMaterial3: true,
        textTheme: textTheme,
        brightness: Brightness.light,
        extensions: const <ThemeExtension<dynamic>>[
          ElevatedButtonColors.light,
          TextColors.light,
          ActionColors.light
        ],
        appBarTheme: appBarTheme,
        scaffoldBackgroundColor: AppColors.background,
        elevatedButtonTheme: elevatedButtonTheme,
        textButtonTheme: textButtonTheme,
        inputDecorationTheme: inputDecorationTheme,
        disabledColor: AppColors.inactive,
        colorScheme: colorScheme,
      );
}
