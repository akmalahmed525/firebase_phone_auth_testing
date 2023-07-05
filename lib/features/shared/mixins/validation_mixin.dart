part of 'mixins.dart';

mixin ValidationMixin {
  bool isValidPhoneNumber(String phoneNumber) =>
      RegExp(r'^\+61\s4\d{2}\s\d{3}\s\d{3}$').hasMatch(phoneNumber);
}
