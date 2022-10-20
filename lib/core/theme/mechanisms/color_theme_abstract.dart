import 'package:caramelo/core/theme/colors.dart';
import 'package:flutter/material.dart';

abstract class IColors {
  CustomColors get colors;
  late Color scaffoldBackgroundColor;
  late Color appBarColor;
  late Color tabBarColor;
  late Color tabBarSelectedColor;
  late Color tabBarNormalColor;
  late Brightness brightness;
  late Color buttonColor;
  late IconThemeData iconTheme;
  late ColorScheme colorScheme;
}
