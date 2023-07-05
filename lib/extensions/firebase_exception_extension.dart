part of 'extensions.dart';

extension FirebaseAuthExceptionExtension on FirebaseAuthException {
  String getErrorMessage(BuildContext context) {
    switch (code) {
      case 'user-not-found':
        return context.locales.firebaseErrorUserNotFound;
      case 'network-request-failed':
        return context.locales.firebaseErrorNetworkRequestFailed;
      case 'user-disabled':
        return context.locales.firebaseErrorUserDisabled;
      case 'too-many-requests':
        return context.locales.firebaseErrorTooManyRequests;
      case 'operation-not-allowed':
        return context.locales.firebaseErrorOperationNotAllowed;
      case 'invalid-verification-code':
        return context.locales.firebaseErrorInvalidVerificationCode;
      default:
        return context.locales.firebaseErrorUnknown;
    }
  }
}
