import 'package:flutter/material.dart';

abstract class ITextTheme {
  ITextTheme(this.primaryColor);

  final Color primaryColor;
  TextTheme data;
  TextStyle headline1;
  TextStyle headline3;
  TextStyle headline4;
  TextStyle headline5;
  TextStyle headline6;
  TextStyle subtitle1;
  TextStyle subtitle2;
  TextStyle bodyText1;
  TextStyle bodyText2;
  String fontFamily;
}
