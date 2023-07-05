part of 'widget_themes.dart';

final textButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(Dimensions.textButtonBorderRadius)),
        ),
        disabledForegroundColor: AppColors.inactive,
        textStyle: button2Style,
        padding: const EdgeInsets.symmetric(
            vertical: Dimensions.textButtonVerticalPadding,
            horizontal: Dimensions.textButtonHorizontalPadding),
        elevation: Dimensions.textButtonElevation));
