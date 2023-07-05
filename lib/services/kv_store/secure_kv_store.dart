part of 'kv_store.dart';

class SecureKVStore {
  const SecureKVStore._();
  static const storage = FlutterSecureStorage();

  static Future<String?> read(String key) async => await storage.read(key: key);

  static Future<void> write(String key, String value) async =>
      await storage.write(key: key, value: value);

  static Future<void> delete(String key) async =>
      await storage.delete(key: key);
}
