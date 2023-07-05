import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_phone_auth_testing/themes/foundations/foundations.dart';

part 'base_outline_input_border.dart';

const _defaultCounterText = '';

class AppTextInputField extends StatefulWidget {
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final String? hint, label;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;
  final Widget? prefixIcon;
  final void Function(String)? onChanged;
  final String? initialValue;

  const AppTextInputField(
      {super.key,
      required this.controller,
      this.keyboardType,
      this.hint,
      this.label,
      this.maxLength,
      this.inputFormatters,
      this.validator,
      this.prefixIcon,
      this.onChanged,
      this.initialValue});

  @override
  State<AppTextInputField> createState() => _PrimaryTextInputFieldState();
}

class _PrimaryTextInputFieldState extends State<AppTextInputField> {
  bool _isFocused = false;
  String? _getLabelText(bool focused) {
    if (focused) return widget.label;
    return widget.controller.text.isNotEmpty ? widget.label : widget.hint;
  }

  @override
  Widget build(BuildContext context) {
    return FocusScope(
      child: Focus(
        onFocusChange: (focus) => setState(() {
          _isFocused = focus;
        }),
        child: TextFormField(
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          initialValue: widget.initialValue,
          validator: widget.validator,
          inputFormatters: widget.inputFormatters,
          maxLength: widget.maxLength,
          onChanged: widget.onChanged,
          decoration: InputDecoration(
              counterText: _defaultCounterText,
              border: const BaseOutlineInputBorder(),
              prefixIcon: widget.prefixIcon,
              fillColor: _isFocused
                  ? AppColors.inputContainerActive
                  : AppColors.inputContainer,
              labelText: _getLabelText(_isFocused),
              hintText: widget.hint,
              floatingLabelBehavior: FloatingLabelBehavior.auto),
        ),
      ),
    );
  }
}
