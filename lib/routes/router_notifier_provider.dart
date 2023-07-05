import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_phone_auth_testing/constants/constants.dart';
import 'package:firebase_phone_auth_testing/features/authentication/authentication.dart';
import 'package:firebase_phone_auth_testing/features/authentication/providers/mobile_verification_provider.dart';
import 'package:firebase_phone_auth_testing/features/home/home.dart';
import 'package:firebase_phone_auth_testing/features/shared/shared.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_notifier_provider.g.dart';

@riverpod
class RouterNotifier extends _$RouterNotifier implements Listenable {
  late User? user;
  late MobileAuthStatus mobileAuthStatus;
  VoidCallback? _listener;

  @override
  Future<void> build() async {
    user = await ref.watch(
      userDataProvider.selectAsync((data) => data),
    );

    mobileAuthStatus =
        ref.watch(mobileVerificationProvider.select((data) => data));

    ref.listenSelf((_, __) {
      if (state.isLoading) return;
      _listener?.call();
    });
  }

  Page<dynamic> _slidePageTransitionBuilder(
      BuildContext context, GoRouterState state, Widget page) {
    return CustomTransitionPage(
      child: page,
      key: state.pageKey,
      transitionDuration: Durations.pageForwardTransitionInMS,
      reverseTransitionDuration: Durations.pageReverseTransitionInMS,
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(1.5, 0),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      ),
    );
  }

  List<GoRoute> get routes => [
        GoRoute(
          path: SplashScreen.path,
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
            path: IntroScreen.path,
            builder: (context, state) => IntroScreen(),
            routes: [
              GoRoute(
                path: PhoneAuthScreen.path,
                pageBuilder: (context, state) => _slidePageTransitionBuilder(
                    context, state, const PhoneAuthScreen()),
                redirect: (context, state) {
                  if (this.state.isLoading || this.state.hasError) return null;

                  String? redirectRoute;

                  const oTPPagePath = '${IntroScreen.path}/${OTPScreen.path}';

                  mobileAuthStatus.whenOrNull(
                    reset: (_, __) {
                      redirectRoute = null;
                    },
                    codeSent: (String verificationId, int? resendToken) {
                      redirectRoute = oTPPagePath;
                    },
                    completed: (credential) {
                      redirectRoute = HomeScreen.path;
                    },
                  );

                  return redirectRoute;
                },
              ),
              GoRoute(
                path: OTPScreen.path,
                pageBuilder: (context, state) => _slidePageTransitionBuilder(
                    context, state, const OTPScreen()),
                redirect: (context, state) {
                  if (this.state.isLoading || this.state.hasError) return null;

                  bool isFullyAuthenticated =
                      user != null && user!.phoneNumber != null;

                  return isFullyAuthenticated ? HomeScreen.path : null;
                },
              ),
            ]),
        GoRoute(
          path: HomeScreen.path,
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: TermsAndConditionScreen.path,
          pageBuilder: (context, state) => _slidePageTransitionBuilder(
              context, state, TermsAndConditionScreen()),
        ),
        GoRoute(
          path: PrivacyPolicyScreen.path,
          pageBuilder: (context, state) => _slidePageTransitionBuilder(
              context, state, PrivacyPolicyScreen()),
        ),
      ];

  // Redirection related functions
  String? redirect(BuildContext context, GoRouterState state) {
    if (this.state.isLoading || this.state.hasError) return null;

    final isInSplashScreen = state.location == SplashScreen.path;

    if (isInSplashScreen) {
      bool isFullyAuthenticated = user != null && user!.phoneNumber != null;
      return isFullyAuthenticated ? HomeScreen.path : IntroScreen.path;
    }

    final isInHomeScreen = state.location == HomeScreen.path;

    if (isInHomeScreen) {
      bool isUnauthenticatedUser = user == null;
      return isUnauthenticatedUser ? IntroScreen.path : null;
    }

    return null;
  }

  Widget errorBuilder(BuildContext context, GoRouterState state) {
    return ErrorScreen(state);
  }

  @override
  void addListener(VoidCallback listener) {
    _listener = listener;
  }

  @override
  void removeListener(VoidCallback listener) {
    _listener = null;
  }
}
