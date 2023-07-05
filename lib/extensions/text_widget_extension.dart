part of 'extensions.dart';

extension StyledTextExtensions on Text {
  Text asTitle() => Text(
        data ?? '',
        style: titleStyle,
      );

  Text asBody() => Text(
        data ?? '',
        style: bodyStyle,
      );

  Text asFootnote() => Text(
        data ?? '',
        style: footnoteStyle,
      );

  Text asCaption() => Text(
        data ?? '',
        style: captionStyle,
      );

  Text primary() => Text(
        data ?? '',
        style: style?.copyWith(
          color: AppColors.primary,
        ),
      );

  Text inverted() => Text(
        data ?? '',
        style: style?.copyWith(
          color: AppColors.onPrimary,
        ),
      );

  Text regular() => Text(
        data ?? '',
        style: style?.copyWith(
          color: AppColors.regularText,
        ),
      );

  Text secondary() => Text(
        data ?? '',
        style: style?.copyWith(
          color: AppColors.secondaryText,
        ),
      );

  Text tertiary() => Text(
        data ?? '',
        style: style?.copyWith(
          color: AppColors.tertiaryText,
        ),
      );

  Text success() => Text(
        data ?? '',
        style: style?.copyWith(
          color: AppColors.success,
        ),
      );

  Text onSuccess() => Text(
        data ?? '',
        style: style?.copyWith(
          color: AppColors.onSuccess,
        ),
      );

  Text warning() => Text(
        data ?? '',
        style: style?.copyWith(
          color: AppColors.warning,
        ),
      );

  Text onWarning() => Text(
        data ?? '',
        style: style?.copyWith(
          color: AppColors.onWarning,
        ),
      );

  Text error() => Text(
        data ?? '',
        style: style?.copyWith(
          color: AppColors.error,
        ),
      );

  Text onError() => Text(
        data ?? '',
        style: style?.copyWith(
          color: AppColors.onError,
        ),
      );

  Text bold() => Text(
        data ?? '',
        style: style?.copyWith(fontWeight: FontWeights.bold),
      );

  Text centered() =>
      Text(data ?? '', textAlign: TextAlign.center, style: style);

  Text leftAligned() =>
      Text(data ?? '', textAlign: TextAlign.left, style: style);

  Text justified() =>
      Text(data ?? '', textAlign: TextAlign.justify, style: style);
}
