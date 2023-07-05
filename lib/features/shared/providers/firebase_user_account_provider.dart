import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firebase_user_account_provider.g.dart';

// This is the Firebase user account provider

@riverpod
Stream<User?> firebaseUserAccount(FirebaseUserAccountRef ref) =>
    FirebaseAuth.instance.authStateChanges();
