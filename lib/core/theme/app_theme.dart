import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/styles/app_text_styles.dart';
import 'contact_icon_theme_extension.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    extensions:  [
      ContactIconColors(
        linkedin: CupertinoColors.systemBlue,
        github: Colors.grey,
        email: Colors.blue,
        whatsapp: Colors.green,
      ),
    ],
    textTheme: AppTextStyles.lightTextTheme,
    cardTheme: CardThemeData(
      color: Colors.grey[100],
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Color(0xFF121212),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xFF121212),
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    textTheme: AppTextStyles.darkTextTheme,
    cardTheme: CardThemeData(
      color: Color(0xFF1E1E1E),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    extensions:  [
      ContactIconColors(
        linkedin: CupertinoColors.activeBlue,
        github: Colors.white70,
        email: Colors.lightBlueAccent,
        whatsapp: Colors.greenAccent,
      ),
    ],
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
  );
}
