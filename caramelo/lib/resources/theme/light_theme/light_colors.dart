import 'package:caramelo/resources/theme/colors.dart';
import 'package:caramelo/resources/theme/mechanisms/color_theme_abstract.dart';
import 'package:flutter/material.dart';

class LightColors implements IColors {

  LightColors() {
    appBarColor = colors.white;
    scaffoldBackgroundColor = colors.white;
    tabBarColor = colors.white;
    colorScheme = const ColorScheme.light().copyWith(
        onPrimary: colors.white,
        onSecondary: colors.white,
        onSurface: colors.white);
    buttonColor = colors.lightCaramel;
    brightness = Brightness.light;
    iconTheme = IconThemeData(color: colors.black);
  }

  @override
  final CustomColors colors = CustomColors();

  @override
  ColorScheme colorScheme;

  @override
  Color appBarColor;

  @override
  Color scaffoldBackgroundColor;

  @override
  Color tabBarColor;

  @override
  Brightness brightness;

  @override
  Color buttonColor;

  @override
  Color tabBarNormalColor;

  @override
  Color tabBarSelectedColor;

  @override
  IconThemeData iconTheme;
}
