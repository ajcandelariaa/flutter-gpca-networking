import 'package:flutter/material.dart';

class MainTheme {
  static final light = ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color(0xFF013e5b),
    backgroundColor: const Color(0xFFEBEBEB),
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: Colors.black),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: const Color(0xFF013e5b),
    ),
  );

  static final dark = ThemeData(
    primaryColor: const Color(0xFF013e5b),
    brightness: Brightness.dark,
  );
}
