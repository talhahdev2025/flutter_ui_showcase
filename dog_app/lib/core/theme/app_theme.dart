// import 'package:dog_app/core/exports.dart';
// class AppTheme {
//   static ThemeData light = ThemeData(
//     useMaterial3: true,
//     fontFamily: 'Inter',
//     scaffoldBackgroundColor: AppColors.background,

//     colorScheme: ColorScheme.light(
//       primary: AppColors.primary,
//     ),
//   );
// }

import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Inter',

    scaffoldBackgroundColor: AppColors.background,

    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      surface: AppColors.surface,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: false,
    ),

    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),

      titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w700,
      ),

      titleMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),

      bodyLarge: TextStyle(
        fontSize: 16,
      ),

      bodyMedium: TextStyle(
        fontSize: 14,
      ),

      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}