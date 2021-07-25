import 'package:caramelo/resources/theme/colors.dart';
import 'package:caramelo/resources/theme/mechanisms/color_theme_abstract.dart';
import 'package:flutter/material.dart';

class DarkColors implements IColors {

  DarkColors() {
    appBarColor = colors.darkGrey;
    scaffoldBackgroundColor = colors.black;
    tabBarColor = colors.darkGrey;
    colorScheme = const ColorScheme.dark().copyWith(
        onPrimary: colors.darkGrey,
        onSecondary: colors.darkGrey,
        onSurface: colors.darkGrey);
    buttonColor = colors.caramel;
    brightness = Brightness.dark;
    iconTheme = IconThemeData(color: colors.white);
  }

  @override
  final CustomColors colors = CustomColors();

  @override
  late ColorScheme colorScheme;

  @override
  late Color appBarColor;

  @override
  late Color scaffoldBackgroundColor;

  @override
  late Color tabBarColor;

  @override
  late Brightness brightness;

  @override
  late Color buttonColor;

  @override
  late Color tabBarNormalColor;

  @override
  late Color tabBarSelectedColor;

  @override
  late IconThemeData iconTheme;
}
