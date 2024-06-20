import 'package:flutter/material.dart';

import 'color_schemes.dart';

class AppTheme {
  static const _fontFamily = 'GeneralSans';
  
  static const Gradient lightGradient = LinearGradient(
   colors: [Color(0xff0095FF), Color(0xffFEF503)],
          stops: [0.0, 1.0],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
  );

  static const Gradient darkGradient = LinearGradient(
    colors: [Color(0xff262626), Color(0xffBC2F2F)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.0, 1.0],
  );

  static ThemeData _buildTheme({required Brightness brightness}) {
    final ColorScheme colors = brightness == Brightness.light ? lightColorScheme : darkColorScheme;

    return ThemeData(
      useMaterial3: true,
      textTheme: _buildTextTheme(colors: colors),
      appBarTheme: AppBarTheme(
        surfaceTintColor: Colors.transparent,
        backgroundColor: colors.surface,
      ),
      cardTheme: CardTheme(
        color: colors.surface,
      ),
      colorScheme: colors,
      
    );
  }

  static TextTheme _buildTextTheme({required ColorScheme colors}) {
    return const TextTheme(
      displayLarge: TextStyle(
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w700,
        fontSize: 32,
      ),
      headlineLarge: TextStyle(
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w700,
        fontSize: 28,
      ),
      titleLarge: TextStyle(
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w700,
        fontSize: 24,
      ),
      titleMedium: TextStyle(
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w700,
        fontSize: 20,
      ),
      titleSmall: TextStyle(
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w700,
        fontSize: 18,
      ),
      bodyLarge: TextStyle(
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
      bodyMedium: TextStyle(
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
      bodySmall: TextStyle(
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      ),
      labelSmall: TextStyle(
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      ),
    );
  }

  static final ThemeData lightTheme = _buildTheme(brightness: Brightness.light);

  static final ThemeData darkTheme = _buildTheme(brightness: Brightness.dark);
}
