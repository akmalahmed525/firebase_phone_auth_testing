part of 'widget_themes.dart';

final inputDecorationTheme = InputDecorationTheme(
    filled: true,
    fillColor: AppColors.inputContainer,
    labelStyle: textTheme.bodySmall!.copyWith(
        fontSize: bodyStyle.fontSize,
        fontWeight: bodyStyle.fontWeight,
        color: AppColors.inactive),
    floatingLabelStyle: textTheme.bodySmall!.copyWith(
        fontSize: captionStyle.fontSize,
        fontWeight: captionStyle.fontWeight,
        color: AppColors.primary),
    border: const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(
            Radius.circular(Dimensions.inputDecorationBorderRadius))));
