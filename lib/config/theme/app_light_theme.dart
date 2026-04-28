import 'package:flutter/material.dart';
import '../scales/app_scales.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';

ThemeData getLightTheme() {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: AppColors.primaryDefault,
    scaffoldBackgroundColor: AppColors.light,
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: AppColors.primaryDefault,
      surface: AppColors.surfaceLight,
      onSurface: AppColors.textPrimaryLight,
      onSurfaceVariant: AppColors.textSecondaryLight,
      surfaceContainer: AppColors.containerLight,
    ),
    dividerColor: AppColors.dividerLight,
    textTheme: TextTheme(
      displayLarge: AppTextStyles.display1Semibold(
        color: AppColors.textPrimaryLight,
      ),
      headlineMedium: AppTextStyles.heading1Semibold(
        color: AppColors.textPrimaryLight,
      ),
      bodyLarge: AppTextStyles.textLG(color: AppColors.textPrimaryLight),
      bodyMedium: AppTextStyles.textMD(color: AppColors.textSecondaryLight),
      labelLarge: AppTextStyles.textMD(color: AppColors.textThirdaryLight),
      labelMedium: AppTextStyles.textSM(color: AppColors.textThirdaryLight),
    ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: AppTextStyles.textSM(
        color: AppColors.greyDark,
        fontWeight: .bold,
      ),
      hintStyle: AppTextStyles.textSM(
        color: AppColors.neutral500,
        fontWeight: .w500,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppScales.borderRadiusMd),
        borderSide: BorderSide(color: AppColors.borderLight),
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
        borderSide: BorderSide(color: AppColors.disabledLight),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.action,
        foregroundColor: AppColors.onAction,
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
