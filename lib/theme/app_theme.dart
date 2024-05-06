import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      appBarTheme: const AppBarTheme(color: primary, elevation: 5),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary, elevation: 4),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppTheme.primary,
            foregroundColor: Colors.white,
            shape: const StadiumBorder(),
            elevation: 0),
      ));
}
