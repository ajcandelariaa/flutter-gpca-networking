import 'package:flutter/material.dart';
import 'package:gpca_networking/themes/af_theme.dart';
import 'package:gpca_networking/themes/anc_theme.dart';
import 'package:gpca_networking/themes/main_theme.dart';
import 'package:gpca_networking/themes/plastic_theme.dart';
import 'package:gpca_networking/themes/rc_theme.dart';
import 'package:gpca_networking/themes/ric_theme.dart';
import 'package:gpca_networking/themes/sc_theme.dart';

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
      case 'anc': 
        _lightData = AncTheme.light;
        _darkData = AncTheme.dark;
      break;
      case 'plastic': 
        _lightData = PlasticTheme.light;
        _darkData = PlasticTheme.dark;
      break;
      case 'rc': 
        _lightData = RcTheme.light;
        _darkData = RcTheme.dark;
      break;
      case 'ric': 
        _lightData = RicTheme.light;
        _darkData = RicTheme.dark;
      break;
      case 'sc': 
        _lightData = ScTheme.light;
        _darkData = ScTheme.dark;
      break;
      default: 
        _lightData = MainTheme.light;
        _darkData = MainTheme.dark;
    }
    notifyListeners();
  }


}