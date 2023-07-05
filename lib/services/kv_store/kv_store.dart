import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'secure_kv_store.dart';

class KVStore {
  KVStore._();

  static Future<SharedPreferences> get _preferences async =>
      await SharedPreferences.getInstance();

  static Future<void> delete(String key, {bool? secured}) async {
    if (secured == true) {
      await SecureKVStore.delete(key);
    }
    (await _preferences).remove(key);
  }

  static Future<dynamic> read(String key, {bool? secured}) async {
    if (secured == true) {
      return await SecureKVStore.read(key);
    }
    return (await _preferences).get(key);
  }

  static Future<void> write(String key, dynamic value, {bool? secured}) async {
    if (secured == true && value.runtimeType != String) {
      throw Exception('Secure value must be a String');
    }

    if (secured == true) {
      await SecureKVStore.write(key, value);
    } else {
      switch (value.runtimeType) {
        case String:
          (await _preferences).setString(key, value);
          break;
        case bool:
          (await _preferences).setBool(key, value);
          break;
        case int:
          (await _preferences).setInt(key, value);
          break;
        case double:
          (await _preferences).setDouble(key, value);
          break;
        case List:
          (await _preferences).setStringList(key, value);
          break;
        default:
          throw Exception('Invalid value type');
      }
    }
  }
}
