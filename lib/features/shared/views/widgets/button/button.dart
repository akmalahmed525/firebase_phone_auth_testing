import 'package:flutter/material.dart';
import 'package:firebase_phone_auth_testing/extensions/extensions.dart';

part 'base_button.dart';

class AppButton extends BaseAppButton {
  const AppButton._(
      {required super.label,
      required super.onPressed,
      super.isInverted,
      super.isTextButton});

  @override
  Widget body(BuildContext context) {
    final elevatedButtonColors = context.elevatedButtonColors;

    return (isTextButton ?? false)
        ? TextButton(
            onPressed: onPressed,
            child: Text(label),
          )
        : ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: (isInverted ?? false)
                  ? elevatedButtonColors.textColor
                  : elevatedButtonColors.backgroundColor,
              foregroundColor: (isInverted ?? false)
                  ? elevatedButtonColors.backgroundColor
                  : elevatedButtonColors.textColor,
            ).merge(ButtonStyle(
                elevation: MaterialStateProperty.resolveWith<double>(
              (Set<MaterialState> states) => 0,
            ))),
            child: Text(label),
          );
  }

  const factory AppButton(
      {required String label,
      required void Function()? onPressed}) = _AppButton;

  const factory AppButton.inverted(
      {required String label,
      required void Function()? onPressed}) = _InvertedAppButton;

  const factory AppButton.text(
      {required String label,
      required void Function()? onPressed}) = _PrimaryAppTextButton;
}

class _AppButton extends AppButton {
  const _AppButton({required super.label, required super.onPressed})
      : super._(isInverted: false, isTextButton: false);
}

class _InvertedAppButton extends AppButton {
  const _InvertedAppButton({required super.label, required super.onPressed})
      : super._(isInverted: true, isTextButton: false);
}

class _PrimaryAppTextButton extends AppButton {
  const _PrimaryAppTextButton({required super.label, required super.onPressed})
      : super._(isInverted: false, isTextButton: true);
}
