part of 'extensions.dart';

extension ContextExtension on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;
  EdgeInsets get viewPadding => MediaQuery.of(this).viewPadding;

  ThemeData get _themeData => Theme.of(this);
  ColorScheme get colorScheme => _themeData.colorScheme;
  ElevatedButtonColors get elevatedButtonColors =>
      _themeData.extension<ElevatedButtonColors>()!;
  ActionColors get actionColors => _themeData.extension<ActionColors>()!;
  TextColors get textColors => _themeData.extension<TextColors>()!;

  AppLocalizations get locales => AppLocalizations.of(this);

  AssetBundle get assetBundle => DefaultAssetBundle.of(this);

  TextTheme get _baseTextTheme => _themeData.textTheme;

  TextStyle? get displayLarge => _baseTextTheme.displayLarge;
  TextStyle? get displayMedium => _baseTextTheme.displayMedium;
  TextStyle? get displaySmall => _baseTextTheme.displaySmall;

  TextStyle? get headlineLarge => _baseTextTheme.headlineLarge;
  TextStyle? get headlineMedium => _baseTextTheme.headlineMedium;
  TextStyle? get headlineSmall => _baseTextTheme.headlineSmall;

  TextStyle? get titleLarge => _baseTextTheme.titleLarge;
  TextStyle? get titleMedium => _baseTextTheme.titleMedium;
  TextStyle? get titleSmall => _baseTextTheme.titleSmall;

  TextStyle? get bodyLarge => _baseTextTheme.bodyLarge;
  TextStyle? get bodyMedium => _baseTextTheme.bodyMedium;
  TextStyle? get bodySmall => _baseTextTheme.bodySmall;

  TextStyle? get labelLarge => _baseTextTheme.labelLarge;
  TextStyle? get labelMedium => _baseTextTheme.labelMedium;
  TextStyle? get labelSmall => _baseTextTheme.labelSmall;
}
