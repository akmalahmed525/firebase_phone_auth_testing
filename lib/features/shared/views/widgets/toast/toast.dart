import 'package:flutter/material.dart';
import 'package:firebase_phone_auth_testing/constants/constants.dart';
import 'package:firebase_phone_auth_testing/extensions/extensions.dart';
import 'package:firebase_phone_auth_testing/themes/foundations/foundations.dart';

part 'toast_bar.dart';
part 'toast_content.dart';

enum ToastType { success, error, warning }

void showErrorMessage(String message) => rootScaffoldMessengerKey.currentState!
    .showSnackBar(ToastBar.error(message: message));

void showSuccessMessage(String message) =>
    rootScaffoldMessengerKey.currentState!
        .showSnackBar(ToastBar.success(message: message));

void showWarningMessage(String message) =>
    rootScaffoldMessengerKey.currentState!
        .showSnackBar(ToastBar.warning(message: message));
