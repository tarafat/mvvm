import 'package:flutter/material.dart';
import 'package:mvvm/shared/providers/app_state.dart';

class AppColors {
  // Primary Colors
  static Color primaryWhite = AppState().themeMode == ThemeMode.light ? Color(0xFFFFFFFF) : Color(0xFF031220);
  static Color primaryDark = AppState().themeMode == ThemeMode.dark ? Color(0xFF031220) : Color(0xFFFFFFFF);

  // Light Blue Colors
  static Color lightBlue50 = AppState().themeMode == ThemeMode.light ? Color(0xFFECF6F9) : Color(0xFF08243F);
  static Color lightBlue100 = AppState().themeMode == ThemeMode.light ? Color(0xFFDDEFF4) : Color(0xFF1A363D);
  static Color lightBlue200 = AppState().themeMode == ThemeMode.light ? Color(0xFFCDE7EE) : Color(0xFF204049);
  static Color lightBlue300 = AppState().themeMode == ThemeMode.light ? Color(0xFFBEE0E9) : Color(0xFF244A54);
  static Color lightBlue400 = AppState().themeMode == ThemeMode.light ? Color(0xFFA4DEEE) : Color(0xFF1F5A6A);
  static Color lightBlue500 = AppState().themeMode == ThemeMode.light ? Color(0xFF8ED2E5) : Color(0xFF28687A);
  static Color lightBlue600 = AppState().themeMode == ThemeMode.light ? Color(0xFF47BCDD) : Color(0xFF03A1CE);
  static Color lightBlue700 = AppState().themeMode == ThemeMode.light ? Color(0xFF2194B4) : Color(0xFF53B3CD);
  static Color lightBlue800 = AppState().themeMode == ThemeMode.light ? Color(0xFF155D72) : Color(0xFF84C8DB);
  static Color lightBlue900 = AppState().themeMode == ThemeMode.light ? Color(0xFF0C252B) : Color(0xFFBADDE5);

  // Grey Colors
  static Color grey50 = AppState().themeMode == ThemeMode.light ? Color(0xFFF1F2F4) : Color(0xFF091121);
  static Color grey100 = AppState().themeMode == ThemeMode.light ? Color(0xFFDEE2E6) : Color(0xFF08243F);
  static Color grey200 = AppState().themeMode == ThemeMode.light ? Color(0xFFCCD2D8) : Color(0xFF373E44);
  static Color grey300 = AppState().themeMode == ThemeMode.light ? Color(0xFFB6C2CD) : Color(0xFF404B56);
  static Color grey400 = AppState().themeMode == ThemeMode.light ? Color(0xFFA3B2C0) : Color(0xFF688BAC);
  static Color grey500 = AppState().themeMode == ThemeMode.light ? Color(0xFF8799AA) : Color(0xFF375E83);
  static Color grey600 = AppState().themeMode == ThemeMode.light ? Color(0xFF62798F) : Color(0xFF738697);
  static Color grey700 = AppState().themeMode == ThemeMode.light ? Color(0xFF475868) : Color(0xFF91A0AE);
  static Color grey800 = AppState().themeMode == ThemeMode.light ? Color(0xFF2D3842) : Color(0xFFAFBAC4);
  static Color grey900 = AppState().themeMode == ThemeMode.light ? Color(0xFF13171A) : Color(0xFFCED4D9);

  // Danger Alert Colors
  static Color dangerAlert50 = AppState().themeMode == ThemeMode.light ? Color(0xFFFAEFEB) : Color(0xFF351C12);
  static Color dangerAlert100 = AppState().themeMode == ThemeMode.light ? Color(0xFFF2D8D0) : Color(0xFF48261B);
  static Color dangerAlert200 = AppState().themeMode == ThemeMode.light ? Color(0xFFEBC2B4) : Color(0xFF5D3122);
  static Color dangerAlert300 = AppState().themeMode == ThemeMode.light ? Color(0xFFF1A58B) : Color(0xFF7E361D);
  static Color dangerAlert400 = AppState().themeMode == ThemeMode.light ? Color(0xFFEE8D6C) : Color(0xFF953F21);
  static Color dangerAlert500 = AppState().themeMode == ThemeMode.light ? Color(0xFFE06B44) : Color(0xFFB15030);

  // Warning Alert Colors
  static Color warningAlert50 = AppState().themeMode == ThemeMode.light ? Color(0xFFFCF5E8) : Color(0xFF3A2B0E);
  static Color warningAlert100 = AppState().themeMode == ThemeMode.light ? Color(0xFFF9E8CB) : Color(0xFF503912);
  static Color warningAlert200 = AppState().themeMode == ThemeMode.light ? Color(0xFFF6DCAF) : Color(0xFF644816);
  static Color warningAlert300 = AppState().themeMode == ThemeMode.light ? Color(0xFFFFD286) : Color(0xFF85590F);
  static Color warningAlert400 = AppState().themeMode == ThemeMode.light ? Color(0xFFFFC666) : Color(0xFF9C6811);
  static Color warningAlert500 = AppState().themeMode == ThemeMode.light ? Color(0xFFFFB434) : Color(0xFFC08115);

  // Success Alert Colors
  static Color successAlert50 = AppState().themeMode == ThemeMode.light ? Color(0xFFF3FAEB) : Color(0xFF253512);
  static Color successAlert100 = AppState().themeMode == ThemeMode.light ? Color(0xFFE0F0CA) : Color(0xFF384C1D);
  static Color successAlert200 = AppState().themeMode == ThemeMode.light ? Color(0xFFCEF39D) : Color(0xFF4C711A);
  static Color successAlert300 = AppState().themeMode == ThemeMode.light ? Color(0xFFBBEF77) : Color(0xFF5E8D20);
  static Color successAlert400 = AppState().themeMode == ThemeMode.light ? Color(0xFFA8EA52) : Color(0xFF70A826);
  static Color successAlert500 = AppState().themeMode == ThemeMode.light ? Color(0xFF89D624) : Color(0xFF8BC93A);

  // Additional UI Colors
  static Color baseColor = AppState().themeMode == ThemeMode.light ? Color(0xFFECF6F9) : Color(0xFF152B32);
  static Color greyBase = AppState().themeMode == ThemeMode.light ? Color(0xFFEEF2F6) : Color(0xFF1B242D);
  static Color bgGrey = AppState().themeMode == ThemeMode.light ? Color(0xFFF8F8F8) : Color(0xFF1F1F1F);
  static Color formColor = AppState().themeMode == ThemeMode.light ? Color(0xFFEEF2F6) : Color(0xFF08243F);
  static Color formBase = AppState().themeMode == ThemeMode.light ? Color(0xFFF2F5F9) : Color(0xFF0B2F51);
  static Color homeBg = AppState().themeMode == ThemeMode.light ? Color(0xFFF1FCFF) : Color(0xFF031220);
}

class AppTheme {
  // Method to check if current theme is dark
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  // Method to get current theme mode
  static ThemeMode currentThemeMode() {
    return appTheme == lightTheme ? ThemeMode.light : ThemeMode.dark;
  }

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primaryWhite,
    scaffoldBackgroundColor: AppColors.primaryWhite,
    colorScheme: ColorScheme.light(
      primary: AppColors.primaryWhite,
      onPrimary: AppColors.primaryDark, // Text/icons on primary color
      background: AppColors.primaryWhite,
      surface: AppColors.primaryWhite,
      onSurface: AppColors.primaryDark,
    ),
    // AppBar Theme
    appBarTheme: AppBarTheme(backgroundColor: AppColors.primaryWhite, foregroundColor: AppColors.primaryDark, elevation: 0),
    // Text Theme
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: AppColors.primaryDark),
      bodyMedium: TextStyle(color: AppColors.primaryDark),
      titleLarge: TextStyle(color: AppColors.primaryDark),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryDark,
    scaffoldBackgroundColor: AppColors.primaryDark,
    colorScheme: ColorScheme.dark(
      primary: AppColors.primaryDark,
      onPrimary: AppColors.primaryWhite,
      background: AppColors.primaryDark,
      surface: AppColors.primaryDark,
      onSurface: AppColors.primaryWhite,
    ),
    // AppBar Theme
    appBarTheme: AppBarTheme(backgroundColor: AppColors.primaryDark, foregroundColor: AppColors.primaryWhite, elevation: 0),
    // Text Theme
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: AppColors.primaryWhite),
      bodyMedium: TextStyle(color: AppColors.primaryWhite),
      titleLarge: TextStyle(color: AppColors.primaryWhite),
    ),
  );
}

// Default theme
final ThemeData appTheme = AppTheme.lightTheme;
