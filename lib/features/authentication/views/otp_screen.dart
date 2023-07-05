import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_phone_auth_testing/constants/constants.dart';
import 'package:firebase_phone_auth_testing/extensions/extensions.dart';
import 'package:firebase_phone_auth_testing/features/authentication/providers/mobile_number_provider.dart';
import 'package:firebase_phone_auth_testing/features/authentication/providers/mobile_verification_provider.dart';
import 'package:firebase_phone_auth_testing/features/shared/shared.dart';
import 'package:firebase_phone_auth_testing/utils/string_utils.dart';

class OTPScreen extends ConsumerStatefulWidget {
  static const String path = 'otp';

  const OTPScreen({
    super.key,
  });

  @override
  OTPScreenState createState() => OTPScreenState();
}

class OTPScreenState extends ConsumerState<OTPScreen>
    with DimensionsMixin, AssetsMixin {
  final _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final phoneNumber = ref.watch(mobileNumberProvider);
    final timer = ref.watch(oTPTimerProvider);
    final userState = ref.watch(userDataProvider);
    final mobileVerification = ref.watch(mobileVerificationProvider);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: SvgPicture.asset(arrowLeftPath)),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: horizontalScreenPadding),
            sliver: SliverList(
                delegate: SliverChildListDelegate([
              Text(context.locales.screenVerifyNumberTitle)
                  .asTitle()
                  .regular()
                  .leftAligned(),
              const SizedBox(
                height: 16,
              ),
              Text(context.locales.screenVerifyNumberDescription)
                  .asBody()
                  .regular()
                  .leftAligned(),
              const SizedBox(
                height: 8,
              ),
              Text(phoneNumber ?? '').asBody().regular().leftAligned().bold(),
              const SizedBox(
                height: 78,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: horizontalScreenPadding),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OTPField(
                      controller: _otpController,
                      onChanged: (value) {},
                      onCompleted: (value) async {
                        final mobileResults =
                            ref.watch(mobileVerificationProvider);
                        mobileResults.when(reset: (verificationId, __) {
                          ref
                              .watch(userDataProvider.notifier)
                              .onSubmitSMSCode(value, verificationId ?? '');
                        }, completed: (PhoneAuthCredential credential) {
                          // context.go(location);
                        }, codeSent: (String verificationId, int? resendToken) {
                          ref
                              .watch(userDataProvider.notifier)
                              .onSubmitSMSCode(value, verificationId);
                        }, otpTimeout: (String verificationId) {
                          ref.watch(oTPTimerProvider.notifier).stop();
                        });
                      },
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    AnimatedSwitcher(
                      duration: Durations.switcherAnimationInMS,
                      child: timer == Durations.otpTimeoutInSec.inSeconds
                          ? const SizedBox(
                              key: ValueKey(1),
                            )
                          : RichText(
                              key: const ValueKey(2),
                              textAlign: TextAlign.left,
                              text: TextSpan(children: [
                                TextSpan(
                                    text: context.locales.otpCodeResendLabel),
                                const TextSpan(text: ' '),
                                TextSpan(text: formattedTime(timer))
                                    .asFootnote()
                                    .primary()
                                    .bold()
                              ]).asCaption().regular()),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              userState.maybeWhen(
                orElse: () => Container(),
                loading: () => const Center(
                  child: AppCircularProgress(),
                ),
                data: (data) => AppButton.text(
                  label: context.locales.buttonLabelResend,
                  onPressed: timer < Durations.otpTimeoutInSec.inSeconds
                      ? null
                      : () {
                          mobileVerification.whenOrNull(
                            reset: (_, resendToken) {
                              ref
                                  .watch(userDataProvider.notifier)
                                  .onSubmitPhoneNumber(phoneNumber ?? '',
                                      forceResendingToken: resendToken);
                              _otpController.clear();
                            },
                          );
                        },
                ),
              )
            ])),
          ),
        ],
      ),
    );
  }
}
