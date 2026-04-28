import 'package:flutter/material.dart';
import '../scales/app_scales.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';

ThemeData getDarkTheme() {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryDefault,
    scaffoldBackgroundColor: AppColors.dark,
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: AppColors.primaryDefault,
      surface: AppColors.surfaceDark,
      onSurface: AppColors.textPrimaryDark,
      onSurfaceVariant: AppColors.textSecondaryDark,
      surfaceContainer: AppColors.containerDark,
    ),
    dividerColor: AppColors.dividerDark,
    textTheme: TextTheme(
      displayLarge: AppTextStyles.display1Semibold(
        color: AppColors.textPrimaryDark,
      ),
      headlineMedium: AppTextStyles.heading1Semibold(
        color: AppColors.textPrimaryDark,
      ),
      bodyLarge: AppTextStyles.textLG(color: AppColors.textPrimaryDark),
      bodyMedium: AppTextStyles.textMD(color: AppColors.textPrimaryDark),
      labelMedium: AppTextStyles.textSM(color: AppColors.textSecondaryDark),
    ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: AppTextStyles.textSM(
        color: AppColors.neutral50,
        fontWeight: .bold,
      ),
      hintStyle: AppTextStyles.textSM(
        color: AppColors.neutral500,
        fontWeight: .w500,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppScales.borderRadiusMd),
        borderSide: BorderSide(color: AppColors.borderDark),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppScales.borderRadiusMd),
        borderSide: BorderSide(color: AppColors.primaryDefault),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppScales.borderRadiusMd),
        borderSide: BorderSide(color: AppColors.errorDefault),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppScales.borderRadiusMd),
        borderSide: BorderSide(color: AppColors.disabledDark),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.action,
        foregroundColor: AppColors.onAction,
        iconColor: AppColors.onAction,
        iconSize: 24.0,
        textStyle: AppTextStyles.textSM(fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppScales.buttonRadius),
        ),
        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        foregroundColor: AppColors.action,
        iconColor: AppColors.action,
        iconSize: 24.0,
        textStyle: AppTextStyles.textSM(fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppScales.buttonRadius),
          side: BorderSide(color: AppColors.action),
        ),
        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      ),
    ),
  );
}
