import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.dark(
    brightness: Brightness.light,
    surface: Colors.white,

    primary: Color(0xFF000000),
    secondary: Colors.white,
    tertiary: Colors.grey[300],
    
  ),
);
