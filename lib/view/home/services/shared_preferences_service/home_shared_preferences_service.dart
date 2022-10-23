import 'package:caramelo/core/services/local_storage_service.dart';
import 'package:caramelo/view/home/support/home_shared_preferences_support.dart';
import 'package:flutter/material.dart';

class HomeKey {
  static String appTheme = 'theme_key';
}

class HomeSharedPreferencesService
    extends LocalStorageService
    implements HomeSharedPreferencesSupport {

  @override
  Future<ThemeMode> get theme async {
    String theme = await LocalStorageService.load(key: HomeKey.appTheme, defaultValue: ThemeMode.light.toString());
    if (theme == 'light') {
      return ThemeMode.light;
    }

    if (theme == 'dark') {
      return ThemeMode.dark;
    }

    return ThemeMode.light;
  }

  @override
  Future<void> setTheme (ThemeMode theme) async {
    await LocalStorageService.save(value: theme.toString(), key: HomeKey.appTheme);
  }
}
