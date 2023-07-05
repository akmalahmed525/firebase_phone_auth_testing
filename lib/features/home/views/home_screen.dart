import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_phone_auth_testing/features/shared/shared.dart';

class HomeScreen extends ConsumerWidget {
  static const String path = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Home Screen'),
          ElevatedButton(
              onPressed: () {
                ref.watch(userDataProvider.notifier).onLogout();
              },
              child: const Text('Logout'))
        ],
      )),
    );
  }
}
