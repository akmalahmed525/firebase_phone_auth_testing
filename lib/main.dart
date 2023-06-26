import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_phone_auth_testing/home_screen.dart';
import 'package:firebase_phone_auth_testing/otp_screen.dart';
import 'package:firebase_phone_auth_testing/phone_auth_screen.dart';
import 'package:firebase_phone_auth_testing/splash_screen.dart';
import 'package:flutter/material.dart';

import 'error_screen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: (settings) => switch (settings.name) {
        '/' => MaterialPageRoute(
            builder: (_) => SplashScreen(
                userStream: FirebaseAuth.instance.authStateChanges())),
        '/phone-auth' =>
          MaterialPageRoute(builder: (_) => const PhoneAuthScreen()),
        '/phone-otp' => MaterialPageRoute(
            builder: (_) => settings.arguments is Map<String, dynamic>
                ? OTPScreen(
                    authMetadata: settings.arguments as Map<String, dynamic>,
                  )
                : const ErrorScreen()),
        '/home' => MaterialPageRoute(builder: (_) => const HomeScreen()),
        _ => MaterialPageRoute(builder: (_) => const ErrorScreen())
      },
    );
  }
}
