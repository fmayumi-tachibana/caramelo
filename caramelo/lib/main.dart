import 'package:caramelo/resources/theme/config.dart';
import 'package:caramelo/resources/theme/custom_theme.dart';
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
      //2
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
      title: 'Caramelo',
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      themeMode: currentTheme.currentTheme,
      home: HomeScene(),
    );
}
