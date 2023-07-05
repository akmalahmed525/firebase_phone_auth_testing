import 'package:firebase_phone_auth_testing/themes/foundations/widget_themes/widget_themes.dart';
import 'package:firebase_phone_auth_testing/themes/tokens/font_sizes.dart';
import 'package:firebase_phone_auth_testing/themes/tokens/font_weights.dart';

final titleStyle = textTheme.titleSmall!.copyWith(
    fontSize: FontSizes.title,
    letterSpacing: 0,
    fontWeight: FontWeights.medium);

final subTitleStyle = sfProTextTheme.titleSmall!.copyWith(
    fontSize: FontSizes.subTitle,
    letterSpacing: 0,
    fontWeight: FontWeights.bold);

final button1Style = textTheme.titleSmall!.copyWith(
    fontSize: FontSizes.button,
    letterSpacing: 0,
    fontWeight: FontWeights.medium);

final button2Style = sfProTextTheme.titleSmall!.copyWith(
    fontSize: FontSizes.button, letterSpacing: 0, fontWeight: FontWeights.bold);

final bodyStyle = textTheme.bodySmall!.copyWith(
    fontSize: FontSizes.body, letterSpacing: 0, fontWeight: FontWeights.light);

final footnoteStyle = textTheme.bodySmall!.copyWith(
    fontSize: FontSizes.footnote,
    letterSpacing: 0,
    fontWeight: FontWeights.light);

final captionStyle = textTheme.labelSmall!.copyWith(
    fontSize: FontSizes.caption,
    letterSpacing: 0,
    fontWeight: FontWeights.medium);
