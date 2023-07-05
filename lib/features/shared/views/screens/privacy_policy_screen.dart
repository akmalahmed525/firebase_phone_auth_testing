import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_phone_auth_testing/extensions/extensions.dart';
import 'package:firebase_phone_auth_testing/features/authentication/providers/mobile_number_provider.dart';
import 'package:firebase_phone_auth_testing/features/shared/shared.dart';

class PrivacyPolicyScreen extends ConsumerWidget
    with DimensionsMixin, AssetsMixin {
  static const String path = '/privacy-policy';

  PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(mobileNumberProvider);
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
            sliver: SliverToBoxAdapter(
              child: Text(context.locales.termsAndConditionPart4)
                  .asTitle()
                  .regular()
                  .leftAligned(),
            ),
          )
        ],
      ),
    );
  }
}
