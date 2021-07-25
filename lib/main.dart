import 'package:caramelo/resources/theme/config.dart';
import 'package:caramelo/resources/theme/dark_theme/dark_theme.dart';
import 'package:caramelo/resources/theme/light_theme/light_theme.dart';
import 'package:caramelo/resources/theme/mechanisms/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:caramelo/modules/home/scenes/home_view.dart';

void main() {
  runApp(CarameloApp());
}

class CarameloApp extends StatefulWidget {
  @override
  _CarameloAppState createState() => _CarameloAppState();
}

class _CarameloAppState extends State<CarameloApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Caramelo',
    theme: ThemeManager.createTheme(LightTheme()),
    darkTheme: ThemeManager.createTheme(DarkTheme()),
    themeMode: currentTheme.currentTheme,
    home: HomeView(),
  );
}
