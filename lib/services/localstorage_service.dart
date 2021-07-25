import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalStorageService {

  static Future<T> load<T>({
    required String key,
    required T defaultValue
  }) async {
    T? value;
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.reload();
    if (T == String) {
      value = preferences.getString(key) as T?;
    } else if (T == bool) {
      value = preferences.getBool(key) as T?;
    } else if (T == int) {
      value = preferences.getInt(key) as T?;
    } else if (T == DateTime) {
      final String date = preferences.getString(key) ?? '';
      value = DateTime.tryParse(date) as T?;
    }
    return value ?? defaultValue;
  }

  static Future<void> save<T>({required T value, required String key}) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.reload();

    if (value is String) {
      await preferences.setString(key, value);
    } else if (value is bool) {
      await preferences.setBool(key, value);
    } else if (value is int) {
      await preferences.setInt(key, value);
    } else if (value is DateTime) {
      await preferences.setString(key, value.toIso8601String());
    }
  }
}
