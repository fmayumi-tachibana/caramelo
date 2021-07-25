import 'package:caramelo/resources/theme/mechanisms/text_theme_abstract.dart';
import 'package:flutter/material.dart';

class LightTextTheme implements ITextTheme {
  LightTextTheme(this.primaryColor) {
    data = const TextTheme(
      headline6: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
      subtitle1: TextStyle(fontSize: 16),
    ).apply(bodyColor: primaryColor);
    fontFamily = 'Montserrat';
  }

  @override
  TextTheme data;

  @override
  TextStyle bodyText1;

  @override
  TextStyle bodyText2;

  @override
  TextStyle headline1;

  @override
  TextStyle headline3;

  @override
  TextStyle headline4;

  @override
  TextStyle headline5;

  @override
  TextStyle headline6;

  @override
  TextStyle subtitle1;

  @override
  TextStyle subtitle2;

  @override
  final Color primaryColor;

  @override
  String fontFamily;
}
