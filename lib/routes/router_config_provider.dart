import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_phone_auth_testing/constants/constants.dart';
import 'package:firebase_phone_auth_testing/features/authentication/authentication.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'router_notifier_provider.dart';

part 'router_config_provider.g.dart';

@riverpod
GoRouter routerConfig(RouterConfigRef ref) {
  final notifier = ref.watch(routerNotifierProvider.notifier);

  return GoRouter(
    debugLogDiagnostics: kDebugMode,
    navigatorKey: navigatorKey,
    routes: notifier.routes,
    redirect: notifier.redirect,
    refreshListenable: notifier,
    errorBuilder: notifier.errorBuilder,
    initialLocation: SplashScreen.path,
  );
}
