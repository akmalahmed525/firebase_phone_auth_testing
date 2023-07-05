part of 'extensions.dart';

extension StyledTextSpanExtensions on TextSpan {
  TextSpan asTitle() => TextSpan(
      text: text,
      style: titleStyle,
      children: children,
      recognizer: recognizer);

  TextSpan asBody() => TextSpan(
      text: text, style: bodyStyle, children: children, recognizer: recognizer);

  TextSpan asFootnote() => TextSpan(
      text: text,
      style: footnoteStyle,
      children: children,
      recognizer: recognizer);

  TextSpan asCaption() => TextSpan(
      text: text,
      style: captionStyle,
      children: children,
      recognizer: recognizer);

  TextSpan primary() => TextSpan(
      text: text,
      style: style?.copyWith(
        color: AppColors.primary,
      ),
      children: children,
      recognizer: recognizer);

  TextSpan inverted() => TextSpan(
      text: text,
      style: style?.copyWith(
        color: AppColors.onPrimary,
      ),
      children: children,
      recognizer: recognizer);

  TextSpan regular() => TextSpan(
      text: text,
      style: style?.copyWith(
        color: AppColors.regularText,
      ),
      children: children,
      recognizer: recognizer);

  TextSpan secondary() => TextSpan(
      text: text,
      style: style?.copyWith(
        color: AppColors.secondaryText,
      ),
      children: children,
      recognizer: recognizer);

  TextSpan tertiary() => TextSpan(
      text: text,
      style: style?.copyWith(
        color: AppColors.tertiaryText,
      ),
      children: children,
      recognizer: recognizer);

  TextSpan success() => TextSpan(
      text: text,
      style: style?.copyWith(
        color: AppColors.success,
      ),
      children: children,
      recognizer: recognizer);

  TextSpan warning() => TextSpan(
      text: text,
      style: style?.copyWith(
        color: AppColors.warning,
      ),
      children: children,
      recognizer: recognizer);

  TextSpan error() => TextSpan(
      text: text,
      style: style?.copyWith(
        color: AppColors.error,
      ),
      children: children,
      recognizer: recognizer);

  TextSpan bold() => TextSpan(
      text: text,
      style: style?.copyWith(fontWeight: FontWeights.bold),
      children: children,
      recognizer: recognizer);
}
