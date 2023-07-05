import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_phone_auth_testing/extensions/extensions.dart';
import 'package:firebase_phone_auth_testing/features/shared/shared.dart';

class TermsAndConditionScreen extends StatelessWidget
    with DimensionsMixin, AssetsMixin {
  static const String path = '/terms-and-conditions';
  TermsAndConditionScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              child: Text(context.locales.termsAndConditionPart2)
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
