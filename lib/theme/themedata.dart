import 'package:flutter/material.dart';

ThemeData lightMode =ThemeData(
  brightness: Brightness.light,
  colorScheme:  ColorScheme.light(
    background: Color(0xFFf3f4f5),
    primary: Color(0xFF323741),
    secondary: Colors.white,
    tertiary: Color(0xFFe2d420),
    tertiaryContainer: Color(0xFF4a90e2),
  )
);
ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Color(0xFF323741),
    primary: Color(0xFFf3f4f5),
    secondary: Colors.black45,
    tertiary: Color(0xFF4a90e2),
    tertiaryContainer: Color(0xFFe2d420),
  )

);