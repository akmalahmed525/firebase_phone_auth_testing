import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class OTPScreen extends StatefulWidget {
  final Map<String, dynamic> authMetadata;
  const OTPScreen({super.key, required this.authMetadata});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  late TextEditingController _otpController;
  @override
  void initState() {
    _otpController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextFormField(
              controller: _otpController,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            ElevatedButton(
                onPressed: () async {
                  final smsCode = _otpController.text;
                  NavigatorState navigationState = Navigator.of(context);
                  FirebaseAuth auth = FirebaseAuth.instance;

                  // Create a PhoneAuthCredential with the code
                  PhoneAuthCredential credential = PhoneAuthProvider.credential(
                      verificationId: widget.authMetadata['verificationId'],
                      smsCode: smsCode);

                  // Sign the user in (or link) with the credential
                  await auth.signInWithCredential(credential);

                  await navigationState.pushNamedAndRemoveUntil(
                      '/home', (route) => false);
                },
                child: const Text('Login'))
          ],
        ),
      ),
    );
  }
}
