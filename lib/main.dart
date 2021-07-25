import 'package:caramelo/resources/theme/config.dart';
import 'package:caramelo/resources/theme/dark_theme/dark_theme.dart';
import 'package:caramelo/resources/theme/light_theme/light_theme.dart';
import 'package:caramelo/resources/theme/mechanisms/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:caramelo/modules/home/home_scene.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
      title: 'Caramelo',
      theme: ThemeManager.createTheme(LightTheme()),
      darkTheme: ThemeManager.createTheme(DarkTheme()),
      themeMode: currentTheme.currentTheme,
      home: HomeScene(),
    );
}
