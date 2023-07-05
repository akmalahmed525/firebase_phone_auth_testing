import 'package:flutter/material.dart';
import 'package:firebase_phone_auth_testing/constants/constants.dart';
import 'package:firebase_phone_auth_testing/extensions/extensions.dart';
import 'package:firebase_phone_auth_testing/features/shared/mixins/mixins.dart';
import 'package:firebase_phone_auth_testing/themes/foundations/foundations.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

const int _otpLength = 6;

class OTPField extends StatelessWidget with DimensionsMixin {
  final TextEditingController controller;
  final void Function(String) onChanged;
  final void Function(String)? onCompleted;

  OTPField(
      {super.key,
      required this.controller,
      required this.onChanged,
      this.onCompleted});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final fieldWidth =
          ((constraints.maxWidth - (horizontalScreenPadding * 2)) /
                  _otpLength) *
              .9;

      return PinCodeTextField(
        autoFocus: true,
        length: _otpLength,
        appContext: context,
        obscureText: false,
        blinkWhenObscuring: true,
        textStyle: subTitleStyle,
        animationType: AnimationType.fade,
        pastedTextStyle: subTitleStyle,
        backgroundColor: context.colorScheme.background,
        pinTheme: PinTheme(
            shape: PinCodeFieldShape.underline,
            fieldWidth: fieldWidth,
            activeColor: AppColors.inactive,
            inactiveColor: AppColors.inactive,
            selectedColor: context.colorScheme.primary,
            errorBorderColor: AppColors.transparent,
            activeFillColor: AppColors.transparent,
            selectedFillColor: AppColors.transparent,
            inactiveFillColor: AppColors.transparent),
        cursorColor: context.colorScheme.primary,
        animationDuration: Durations.otpAnimationInMS,
        enableActiveFill: true,
        controller: controller,
        keyboardType: TextInputType.number,
        onChanged: onChanged,
        onCompleted: onCompleted,
        beforeTextPaste: (text) => true,
      );
    });
  }
}
