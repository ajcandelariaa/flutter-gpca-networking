import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gpca_networking/themes/af_theme.dart';
import 'package:gpca_networking/themes/main_theme.dart';

class ThemeProvider with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;
  ThemeData _lightData = MainTheme.light;
  ThemeData _darkData = MainTheme.dark;

  get themeMode => _themeMode;
  get lightData => _lightData;
  get darkData => _darkData;

  toggleThemeMode(bool isDark){
    _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  toggleThemeData(String eventName) {
    switch  (eventName) {
      case 'af': 
        _lightData = AfTheme.light;
        _darkData = AfTheme.dark;
      break;
      
      default: 
        _lightData = MainTheme.light;
        _darkData = MainTheme.dark;
    }
    notifyListeners();
  }


}