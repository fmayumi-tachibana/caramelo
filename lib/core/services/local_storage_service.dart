import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class LocalStorageService {

  static const _androidOptions =
    AndroidOptions(encryptedSharedPreferences: true);

  static const _iosOptions =
    IOSOptions(accessibility: KeychainAccessibility.first_unlock);

  static const FlutterSecureStorage _secureStorage =
    FlutterSecureStorage(iOptions: _iosOptions, aOptions: _androidOptions);

  static Future<void> _setList<T>({required String key, required List<T> value}) async {
    String buffer = json.encode(value);
    await _secureStorage.write(key: key, value: buffer);
  }

  static Future<T> load<T>({
    required String key,
    required T defaultValue,
  }) async {
    T? value;
    if (T == String) {
      value = _secureStorage.read(key: key) as T?;
    } else if (T == bool) {
      value = _secureStorage.read(key: key) as T?;
    } else if (T == num) {
      value = _secureStorage.read(key: key) as T?;
    } else if (T == DateTime) {
      final String date = _secureStorage.read(key: key).toString() ?? '';
      value = DateTime.tryParse(date) as T?;
    }
    return value ?? defaultValue;
  }

  static Future<void> save<T>({required T value, required String key}) async {
    if (value is String) {
      await _secureStorage.write(key: key, value: value);
    } else if (value is bool) {
      await _secureStorage.write(key: key, value: value.toString());
    } else if (value is num) {
      await _secureStorage.write(key: key, value: value.toString());
    } else if (value is DateTime) {
      await _secureStorage.write(key: key, value: value.toIso8601String());
    } else if (value is List<String>) {
      await _setList<String>(key: key, value: value);
    } else if (value is List<num>) {
      await _setList<num>(key: key, value: value);
    } else if (value is List<bool>) {
      await _setList<bool>(key: key, value: value);
    }
  }

  static Future<void> clearAll() async => await _secureStorage.deleteAll();
}
