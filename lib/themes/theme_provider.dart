import 'package:flutter/material.dart';
import 'package:food_delivery_app/themes/dark_mode.dart';
import 'package:food_delivery_app/themes/light_mode.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;
  ThemeData get themeData => _themeData;

  bool get isGetDarkMode => _themeData == darktMode;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightMode) {
      _themeData = darktMode;
    } else {
      _themeData = lightMode;
    }
  }
}
