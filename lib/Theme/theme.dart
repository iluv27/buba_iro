import 'package:flutter/material.dart';

abstract class AppColors {
  static const bgLight = Color(0xfff6f6f6);
  static const bgDark = Color.fromARGB(255, 209, 255, 6);
  static const primary = Color.fromARGB(255, 0, 182, 21);
  static const secondary = Color(0xFFE2FF06);
}

// LIGHT THEME
ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    background: AppColors.bgLight,
    primary: AppColors.primary,
  ),

  // Text Theme
  textTheme: const TextTheme(
    titleSmall: TextStyle(
        fontSize: 12,
        color: Color.fromARGB(255, 117, 117, 117),
        fontWeight: FontWeight.w300),
    titleMedium: TextStyle(
      fontSize: 16,
      color: Color.fromARGB(255, 25, 25, 25),
    ),
  ),
  iconButtonTheme: const IconButtonThemeData(
    style: ButtonStyle(
      iconColor: MaterialStatePropertyAll(
        Color.fromARGB(255, 0, 0, 0),
      ),
    ),
  ),
  iconTheme: const IconThemeData(color: Colors.black45),
);

// DARK THEME
ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    background: AppColors.bgDark,
  ),
);
