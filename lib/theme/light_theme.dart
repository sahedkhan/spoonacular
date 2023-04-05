import 'package:flutter/material.dart';

ThemeData light = ThemeData(
  fontFamily: 'Roboto',
  primaryColor: Color(0xFFEF6014),
  secondaryHeaderColor: Color(0xFF000000),
  disabledColor: Color(0xFFA0A4A8),
  errorColor: Colors.red,
  brightness: Brightness.light,
  hintColor: Color(0xFF9F9F9F),
  scaffoldBackgroundColor: Color(0xFFFFFFFF),
  cardColor: Colors.white,
  colorScheme: ColorScheme.light(
      primary: Color(0xFFEF6014), secondary: Color(0xFFEF6014)),
  textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: Color(0xFFEF6014))),
);
