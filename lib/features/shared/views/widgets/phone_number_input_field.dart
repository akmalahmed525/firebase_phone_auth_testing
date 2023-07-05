import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:firebase_phone_auth_testing/extensions/extensions.dart';
import 'package:firebase_phone_auth_testing/features/shared/mixins/mixins.dart';

import 'text_field/text_field.dart';

const int _maxLength = 23;
const String _inputMask = '+00 000 000 000 000 000';

class PhoneNumberInputField extends StatelessWidget with ValidationMixin {
  final TextEditingController controller;
  final void Function(String)? onChanged;
  final String? initialValue;
  const PhoneNumberInputField(
      {super.key, required this.controller, this.initialValue, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return AppTextInputField(
      maxLength: _maxLength,
      controller: controller,
      initialValue: initialValue,
      keyboardType: TextInputType.phone,
      hint: context.locales.mobileNumberHint,
      label: context.locales.mobileNumberLabel,
      inputFormatters: [MaskedInputFormatter(_inputMask)],
      onChanged: onChanged,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return context.locales.fieldValidationEmpty;
        }

        return null;
      },
    );
  }
}
