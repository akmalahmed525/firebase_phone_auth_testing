import 'package:flutter/services.dart';

Future<T?> hideKeyboard<T>() async {
  return await SystemChannels.textInput.invokeMethod<T?>('TextInput.hide');
}
