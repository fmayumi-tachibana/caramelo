import 'dart:async';

import 'package:caramelo/view/home/worker/home_worker.dart';
import 'package:flutter/material.dart';

class CustomTheme with ChangeNotifier {
  ThemeMode _theme = ThemeMode.light;

  ThemeMode get currentTheme {
    unawaited(getTheme());
    return _theme;
  }

  Future<void> getTheme() async {
    _theme = await HomeWorker().getTheme();
  }

  Future<void> toggleTheme() async {
    switch (_theme) {
      case ThemeMode.light:
        _theme = ThemeMode.dark;
        break;
      case ThemeMode.dark:
        _theme = ThemeMode.light;
        break;
      case ThemeMode.system:
        break;
    }
    await HomeWorker().setTheme(_theme);
    notifyListeners();
  }
}
