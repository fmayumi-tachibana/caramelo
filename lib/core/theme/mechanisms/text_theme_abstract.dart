import 'package:flutter/material.dart';

abstract class ITextTheme {
  ITextTheme(this.primaryColor);

  final Color primaryColor;
  late TextTheme data;
  late TextStyle headline1;
  late TextStyle headline3;
  late TextStyle headline4;
  late TextStyle headline5;
  late TextStyle headline6;
  late TextStyle subtitle1;
  late TextStyle subtitle2;
  late TextStyle bodyText1;
  late TextStyle bodyText2;
  late String fontFamily;
}
