import 'package:flutter/material.dart';

class ScTheme {
  static final light = ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color(0xFF004858),
    backgroundColor: const Color(0xFFEBEBEB),
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: Colors.black),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: const Color(0xFF004858),
    ),
  );

  static final dark = ThemeData(
    primaryColor: Colors.brown,
    brightness: Brightness.dark,
  );
}