import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StateLogger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    if (kDebugMode) {
      print('''
{
  "provider": "${provider.name ?? provider.runtimeType}",
  "previousValue": "$previousValue",
  "newValue": "$newValue"
}''');
    }
  }
}
