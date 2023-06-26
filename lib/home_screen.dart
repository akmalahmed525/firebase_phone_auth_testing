import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    NavigatorState navigatorState = Navigator.of(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
                onPressed: () async {
                  await FirebaseAuth.instance.signOut();
                  await navigatorState.pushNamedAndRemoveUntil(
                      '/', (route) => false);
                },
                child: const Text('Logout'))
          ],
        ),
      ),
    );
  }
}
