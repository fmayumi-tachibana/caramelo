import 'package:caramelo/view/home/services/shared_preferences_service/home_shared_preferences_service.dart';
import 'package:flutter/material.dart';

class HomeWorker {
  Future<ThemeMode> getTheme() async =>
      HomeSharedPreferencesService().theme;

  Future<void> setTheme(ThemeMode theme) async =>
      HomeSharedPreferencesService().setTheme(theme);
}
