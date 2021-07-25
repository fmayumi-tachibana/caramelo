import 'package:caramelo/modules/home/worker/home_worker.dart';
import 'package:flutter/material.dart';

class CustomTheme with ChangeNotifier {
  bool _isDarkTheme = false;

  ThemeMode get currentTheme {
    getTheme();
    return _isDarkTheme ? ThemeMode.dark : ThemeMode.light;
  }

  void getTheme() async {
    _isDarkTheme = await HomeWorker().getTheme();
  }

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    HomeWorker().setTheme(_isDarkTheme);
    notifyListeners();
  }
}
