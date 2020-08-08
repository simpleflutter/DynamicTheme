import 'package:flutter/material.dart';
import 'package:provider_demo/theme/app_theme.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeData _currentTheme = AppTheme.lightTheme();
  ThemeMode _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;

  void changeTheme() {
    if (_themeMode == ThemeMode.light) {
      _currentTheme = AppTheme.darkTheme();
      _themeMode = ThemeMode.dark;
    } else {
      _currentTheme = AppTheme.lightTheme();
      _themeMode = ThemeMode.light;
    }
    notifyListeners();
  }
}
