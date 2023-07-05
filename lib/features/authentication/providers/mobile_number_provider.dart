import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'mobile_number_provider.g.dart';

@Riverpod(keepAlive: true)
class MobileNumber extends _$MobileNumber {
  @override
  String? build() {
    return null;
  }

  void onChange(String mobileNumber) {
    state = mobileNumber;
  }
}
