import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_phone_auth_testing/constants/constants.dart';
import 'package:firebase_phone_auth_testing/extensions/extensions.dart';
import 'package:firebase_phone_auth_testing/routes/router_config_provider.dart';
import 'package:firebase_phone_auth_testing/themes/themes.dart';

class App extends ConsumerWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lightTheme = AppTheme.lightTheme;
    final routerConfig = ref.watch(routerConfigProvider);

    return MaterialApp.router(
      theme: lightTheme,
      themeMode: ThemeMode.light,
      routerConfig: routerConfig,
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: rootScaffoldMessengerKey,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      onGenerateTitle: (context) => context.locales.appTitle,
    );
  }
}
