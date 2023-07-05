part of 'widget_themes.dart';

final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(Dimensions.elevatedButtonBorderRadius)),
        ),
        textStyle: textTheme.titleSmall!.copyWith(
            fontSize: button1Style.fontSize,
            fontWeight: button1Style.fontWeight),
        padding: const EdgeInsets.symmetric(
            vertical: Dimensions.elevatedButtonVerticalPadding,
            horizontal: Dimensions.elevatedButtonHorizontalPadding),
        elevation: Dimensions.elevatedButtonElevation));
