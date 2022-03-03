import 'package:caramelo/resources/theme/colors.dart';
import 'package:caramelo/resources/theme/mechanisms/color_theme_abstract.dart';
import 'package:flutter/material.dart';

class LightColors implements IColors {

  LightColors() {
    appBarColor = CustomColors.white;
    scaffoldBackgroundColor = CustomColors.white;
    tabBarColor = CustomColors.white;
    colorScheme = const ColorScheme.light().copyWith(
        onPrimary: CustomColors.darkGrey,
        onSecondary: CustomColors.darkGrey,
        onSurface: CustomColors.darkGrey);
    buttonColor = CustomColors.caramel;
    brightness = Brightness.light;
    iconTheme = IconThemeData(color: CustomColors.caramel);
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
