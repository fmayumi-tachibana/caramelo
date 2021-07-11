import 'package:caramelo/resources/theme/colors.dart';
import 'package:caramelo/resources/theme/mechanisms/color_theme_abstract.dart';
import 'package:flutter/material.dart';

class DarkColors implements IColors {

  DarkColors() {
    appBarColor = colors.darkGrey;
    scaffoldBackgroundColor = colors.black;
    tabBarColor = colors.darkGrey;
    colorScheme = const ColorScheme.light().copyWith(
        onPrimary: colors.darkGrey,
        onSecondary: colors.darkGrey,
        onSurface: colors.darkGrey);
    buttonColor = colors.lightCaramel;
    brightness = Brightness.dark;
    iconTheme = IconThemeData(color: colors.white);
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
