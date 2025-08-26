import 'package:flutter/material.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'app_name': 'MVVM App',
      'welcome': 'Welcome',
      'login': 'Login',
      'register': 'Register',
      'settings': 'Settings',
      'profile': 'Profile',
      'logout': 'Logout',
      'error': 'Error',
      'success': 'Success',
      'loading': 'Loading...',
    },
    'es': {
      'app_name': 'MVVM App',
      'welcome': 'Bienvenido',
      'login': 'Iniciar sesión',
      'register': 'Registrarse',
      'settings': 'Configuración',
      'profile': 'Perfil',
      'logout': 'Cerrar sesión',
      'error': 'Error',
      'success': 'Éxito',
      'loading': 'Cargando...',
    },
  };

  String get appName => _localizedValues[locale.languageCode]!['app_name']!;
  String get welcome => _localizedValues[locale.languageCode]!['welcome']!;
  String get login => _localizedValues[locale.languageCode]!['login']!;
  String get register => _localizedValues[locale.languageCode]!['register']!;
  String get settings => _localizedValues[locale.languageCode]!['settings']!;
  String get profile => _localizedValues[locale.languageCode]!['profile']!;
  String get logout => _localizedValues[locale.languageCode]!['logout']!;
  String get error => _localizedValues[locale.languageCode]!['error']!;
  String get success => _localizedValues[locale.languageCode]!['success']!;
  String get loading => _localizedValues[locale.languageCode]!['loading']!;

  static const List<Locale> supportedLocales = [Locale('en'), Locale('es')];
}
