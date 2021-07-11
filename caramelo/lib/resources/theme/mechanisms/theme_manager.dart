import 'package:caramelo/resources/theme/mechanisms/color_theme_abstract.dart';
import 'package:caramelo/resources/theme/mechanisms/text_theme_abstract.dart';
import 'package:flutter/material.dart';

abstract class ITheme {
  ITextTheme get textTheme;
  IColors get colors;
}

abstract class ThemeManager {
  static ThemeData createTheme(ITheme theme) => ThemeData(
    scaffoldBackgroundColor: theme.colors.scaffoldBackgroundColor,
    fontFamily: theme.textTheme.fontFamily,
    textTheme: theme.textTheme.data,
    appBarTheme: AppBarTheme(backgroundColor: theme.colors.appBarColor),
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      buttonColor: theme.colors.buttonColor,
    ),
      iconTheme: theme.colors.iconTheme,
  );
}
