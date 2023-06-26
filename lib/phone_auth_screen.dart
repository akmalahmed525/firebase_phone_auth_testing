import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PhoneAuthScreen extends StatefulWidget {
  const PhoneAuthScreen({super.key});

  @override
  State<PhoneAuthScreen> createState() => _PhoneAuthScreenState();
}

class _PhoneAuthScreenState extends State<PhoneAuthScreen> {
  late TextEditingController _numberController;
  @override
  void initState() {
    _numberController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            controller: _numberController,
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(border: OutlineInputBorder()),
          ),
          ElevatedButton(
              onPressed: () async {
                final phoneNumber = _numberController.text;
                print(phoneNumber);

                NavigatorState navigationState = Navigator.of(context);
                FirebaseAuth auth = FirebaseAuth.instance;

                await auth.verifyPhoneNumber(
                  phoneNumber: phoneNumber,
                  verificationCompleted:
                      (PhoneAuthCredential credential) async {
                    print('verificationCompleted');
                    print(credential);
                    await auth.signInWithCredential(credential);
                    await navigationState.pushNamedAndRemoveUntil(
                        '/home', (route) => false);
                  },
                  verificationFailed: (FirebaseAuthException e) {
                    print('verificationFailed');
                    print(e);
                  },
                  codeSent: (String verificationId, int? resendToken) async {
                    print('codeSent');
                    print(verificationId);
                    print(resendToken);
                    await navigationState.pushNamed('/phone-otp', arguments: {
                      'verificationId': verificationId,
                      'resendToken': resendToken
                    });
                  },
                  codeAutoRetrievalTimeout: (String verificationId) {},
                );
              },
              child: const Text('Proceed'))
        ],
      )),
    );
  }
}
