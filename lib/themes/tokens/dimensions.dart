import 'package:flutter/material.dart';

class Dimensions {
  const Dimensions._();

  static const double horizontalScreenPadding =
      NavigationToolbar.kMiddleSpacing;

  // AppBar
  static const double appBarElevation = 0;
  static const double appBarScrolledUnderElevation = 0;
  static const double appBarTitleSpacing = horizontalScreenPadding;
  static const double extendedAppbarHeight = 200;

  // ElevatedButton
  static const double elevatedButtonElevation = 0;
  static const double elevatedButtonBorderRadius = 8;
  static const double elevatedButtonVerticalPadding = 16;
  static const double elevatedButtonHorizontalPadding = 24;

  // InputDecoration
  static const double inputDecorationBorderRadius = elevatedButtonBorderRadius;

  // TextButton
  // Same as ElevatedButton
  static const double textButtonElevation = elevatedButtonElevation;
  static const double textButtonBorderRadius = elevatedButtonBorderRadius;
  static const double textButtonVerticalPadding = elevatedButtonVerticalPadding;
  static const double textButtonHorizontalPadding =
      elevatedButtonHorizontalPadding;
}
