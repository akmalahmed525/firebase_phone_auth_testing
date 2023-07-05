import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_phone_auth_testing/extensions/extensions.dart';
import 'package:firebase_phone_auth_testing/features/shared/shared.dart';

class SplashScreen extends StatelessWidget {
  static const String path = '/';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = context.colorScheme;
    return Scaffold(
        backgroundColor: colorScheme.primary,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          backgroundColor: context.colorScheme.primary,
        ),
        body: const SafeArea(
            child: Center(
          child: AppCircularProgress.inverted(),
        )));
  }
}
