import 'package:flutter/material.dart';
import 'package:mvvm/core/base/base_view_model.dart';

class AppState extends BaseViewModel {
  ThemeMode _themeMode = ThemeMode.system;
  Locale _locale = const Locale('en');
  bool _isAuthenticated = false;

  ThemeMode get themeMode => _themeMode;
  Locale get locale => _locale;
  bool get isAuthenticated => _isAuthenticated;

  void setThemeMode(ThemeMode mode) {
    if (_themeMode != mode) {
      _themeMode = mode;
      notifyListeners();
    }
  }

  void setLocale(Locale locale) {
    if (_locale != locale) {
      _locale = locale;
      notifyListeners();
    }
  }

  void setAuthenticationStatus(bool isAuthenticated) {
    if (_isAuthenticated != isAuthenticated) {
      _isAuthenticated = isAuthenticated;
      notifyListeners();
    }
  }
}
