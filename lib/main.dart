import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_phone_auth_testing/utils/state_logger.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ProviderScope(observers: [
    ...(kDebugMode ? [StateLogger()] : [])
  ], child: const App()));
}
