import 'package:flutter/material.dart';

abstract class HomeSharedPreferencesSupport {
  Future<ThemeMode> get theme;
  Future<void> setTheme(ThemeMode theme);
}
