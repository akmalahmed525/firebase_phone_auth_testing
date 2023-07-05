import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_phone_auth_testing/extensions/extensions.dart';
import 'package:firebase_phone_auth_testing/features/authentication/providers/mobile_number_provider.dart';
import 'package:firebase_phone_auth_testing/features/shared/shared.dart';
import 'package:firebase_phone_auth_testing/utils/platform_utils.dart';

class PhoneAuthScreen extends ConsumerStatefulWidget {
  static const String path = 'phone-auth';
  const PhoneAuthScreen({super.key});

  @override
  PhoneAuthScreenState createState() => PhoneAuthScreenState();
}

class PhoneAuthScreenState extends ConsumerState<PhoneAuthScreen>
    with DimensionsMixin, AssetsMixin {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _mobileNumberController;

  @override
  void initState() {
    _mobileNumberController =
        TextEditingController(text: ref.read(mobileNumberProvider));
    super.initState();
  }

  @override
  void dispose() {
    _mobileNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final userState = ref.watch(userDataProvider);

    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          snap: true,
          pinned: true,
          floating: true,
          scrolledUnderElevation: 0,
          automaticallyImplyLeading: false,
          expandedHeight: extendedAppbarHeight,
          backgroundColor: context.colorScheme.primary,
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: horizontalScreenPadding),
          sliver: SliverToBoxAdapter(
            child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Text(context.locales.signinInstructionsLabel)
                        .asBody()
                        .regular()
                        .centered(),
                    const SizedBox(
                      height: 18,
                    ),
                    PhoneNumberInputField(
                      controller: _mobileNumberController,
                      onChanged: (mobileNumber) {
                        ref
                            .read(mobileNumberProvider.notifier)
                            .onChange(mobileNumber);
                      },
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    userState.maybeWhen(
                      orElse: () => Container(),
                      loading: () => const Center(
                        child: AppCircularProgress(),
                      ),
                      data: (data) => AppButton(
                        label: context.locales.buttonLabelContinue,
                        onPressed: () async {
                          hideKeyboard();
                          if (_formKey.currentState!.validate()) {
                            final phoneNumber = _mobileNumberController.text;
                            ref
                                .watch(userDataProvider.notifier)
                                .onSubmitPhoneNumber(phoneNumber);
                          }
                        },
                      ),
                    ),
                  ],
                )),
          ),
        )
      ],
    ));
  }
}
