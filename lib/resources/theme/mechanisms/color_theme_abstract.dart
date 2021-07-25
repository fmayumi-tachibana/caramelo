import 'dart:ui';

import 'package:caramelo/resources/theme/colors.dart';
import 'package:flutter/material.dart';

abstract class IColors {
  CustomColors get colors;
  Color scaffoldBackgroundColor;
  Color appBarColor;
  Color tabBarColor;
  Color tabBarSelectedColor;
  Color tabBarNormalColor;
  Brightness brightness;
  Color buttonColor;
  IconThemeData iconTheme;

  ColorScheme colorScheme;
}
