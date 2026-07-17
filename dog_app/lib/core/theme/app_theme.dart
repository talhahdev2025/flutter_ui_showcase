import 'package:dog_app/core/exports.dart';
class AppTheme {
  static ThemeData light = ThemeData(
    useMaterial3: true,
    fontFamily: 'Inter',
    scaffoldBackgroundColor: AppColors.background,

    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
    ),
  );
}