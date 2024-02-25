import 'package:flutter/material.dart';

import 'color.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColor.primaryColor,
    primaryColorLight: AppColor.primaryColor,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColor.lightBackgroundColor,
    useMaterial3: true,
    colorScheme: const ColorScheme(
        background: AppColor.lightBackgroundColor,
        brightness: Brightness.light,
        surface: Colors.white,
        onSecondary: Colors.red,
        error: Colors.red,
        onError: Colors.red,
        onPrimary: Colors.white,
        onBackground: AppColor.primaryColor,
        onSurface: Colors.black,
        primary: AppColor.primaryColor,
        secondary: Colors.white),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      scrolledUnderElevation: 0,
    ),
    fontFamily: "Almarai",
  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: AppColor.primaryColor,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColor.darkBackgroundColor,
    useMaterial3: true,
    colorScheme: const ColorScheme(
        background: AppColor.darkBackgroundColor,
        brightness: Brightness.dark,
        surface: Colors.black,
        onSecondary: Colors.red,
        error: Colors.red,
        onError: Colors.red,
        onPrimary: Colors.white,
        onBackground: AppColor.primaryColor,
        onSurface: Colors.white,
        primary: AppColor.primaryColor,
        secondary: Colors.white),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      scrolledUnderElevation: 0,
    ),
    fontFamily: "Almarai",
  );
}
