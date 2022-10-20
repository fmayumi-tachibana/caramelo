import 'package:caramelo/core/theme/config.dart';
import 'package:caramelo/core/theme/dark_theme/dark_theme.dart';
import 'package:caramelo/core/theme/light_theme/light_theme.dart';
import 'package:caramelo/core/theme/mechanisms/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'core/routes/app_router.dart';

void main() {
  runApp(const CarameloApp());
}

class CarameloApp extends StatefulWidget {
  const CarameloApp({Key? key}) : super(key: key);

  @override
  _CarameloAppState createState() => _CarameloAppState();
}

class _CarameloAppState extends State<CarameloApp> {
  final _appRouter = AppRouter();

  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) => Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Caramelo',
          theme: ThemeManager.createTheme(LightTheme()),
          darkTheme: ThemeManager.createTheme(DarkTheme()),
          themeMode: currentTheme.currentTheme,
          routeInformationParser: _appRouter.defaultRouteParser(),
          routerDelegate: _appRouter.delegate(),
        );
      }
  );
}
