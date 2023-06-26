import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  final Stream<User?> userStream;
  const SplashScreen({super.key, required this.userStream});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late StreamSubscription<User?> _subscription;
  void _listenUserChanges() {
    _subscription = widget.userStream.listen((user) async {
      if (user == null) {
        await Navigator.of(context)
            .pushNamedAndRemoveUntil('/phone-auth', (_) => false);
        return;
      }

      await Navigator.of(context)
          .pushNamedAndRemoveUntil('/home', (_) => false);
    });
  }

  @override
  void initState() {
    _listenUserChanges();
    super.initState();
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant SplashScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.userStream != widget.userStream) {
      _subscription.cancel();
      _listenUserChanges();
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Center(
        child: CircularProgressIndicator(),
      )),
    );
  }
}
