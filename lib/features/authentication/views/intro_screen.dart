import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_phone_auth_testing/extensions/extensions.dart';
import 'package:firebase_phone_auth_testing/features/shared/shared.dart';

import 'phone_auth_screen.dart';

class IntroScreen extends ConsumerWidget with DimensionsMixin, AssetsMixin {
  static const String path = '/intro';

  IntroScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final results = ref.watch(appMetadataProvider);

    AppLocalizations locales = context.locales;
    ColorScheme colorScheme = context.colorScheme;

    return Scaffold(
        backgroundColor: colorScheme.primary,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          backgroundColor: colorScheme.primary,
        ),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalScreenPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              AppButton.inverted(
                label: locales.buttonLabelGetStarted,
                onPressed: () async =>
                    await context.push('$path/${PhoneAuthScreen.path}'),
              ),
              const SizedBox(
                height: 24,
              ),
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: locales.termsAndConditionPart1,
                    children: [
                      const TextSpan(text: ' '),
                      TextSpan(
                              text: locales.termsAndConditionPart2,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () =>
                                    context.push(TermsAndConditionScreen.path))
                          .asFootnote()
                          .inverted()
                          .bold(),
                    ],
                  ).asFootnote().inverted()),
              const SizedBox(
                height: 5,
              ),
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: locales.termsAndConditionPart3,
                    children: [
                      const TextSpan(text: ' '),
                      TextSpan(
                              text: locales.termsAndConditionPart4,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () =>
                                    context.push(PrivacyPolicyScreen.path))
                          .asFootnote()
                          .inverted()
                          .bold()
                    ],
                  ).asFootnote().inverted()),
              const SizedBox(
                height: 17,
              ),
              results.maybeWhen(
                data: (value) =>
                    Text(locales.versionLabel(value.version, value.buildNumber))
                        .asFootnote()
                        .inverted()
                        .centered(),
                orElse: () => const SizedBox(),
              ),
              const SizedBox(
                height: 37,
              ),
            ],
          ),
        )));
  }
}
