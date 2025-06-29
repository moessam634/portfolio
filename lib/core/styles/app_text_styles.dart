import 'package:flutter/material.dart';

class AppTextStyles {
  static final TextTheme darkTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontSize: 48,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    displayMedium: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headlineMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      color: Colors.white70,
      height: 1.6,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      color: Colors.white70,
    ),
  );
  static final TextTheme lightTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontSize: 48,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    displayMedium: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headlineMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      color: Colors.black87,
      height: 1.6,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      color: Colors.black87,
    ),
  );
}
