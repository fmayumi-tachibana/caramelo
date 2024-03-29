import 'package:caramelo/core/theme/colors.dart';
import 'package:caramelo/core/theme/mechanisms/color_theme_abstract.dart';
import 'package:flutter/material.dart';

class DarkColors implements IColors {

  DarkColors() {
    appBarColor = CustomColors.darkGrey;
    scaffoldBackgroundColor = CustomColors.black;
    tabBarColor = CustomColors.darkGrey;
    colorScheme = const ColorScheme.dark().copyWith(
      onPrimary: CustomColors.darkGrey,
      onSecondary: CustomColors.darkGrey,
      onSurface: CustomColors.darkGrey,
    );
    buttonColor = CustomColors.caramel;
    brightness = Brightness.dark;
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
