import 'package:flutter/material.dart';
import 'app_fonts.dart';

class AppTextStyles {
  AppTextStyles._();

  ///---------- Display ----------///
  static TextStyle display1Semibold({
    Color? color,
    double? height,
    double? letterSpacing,
  }) {
    return _baseStyle(
      color,
      FontWeight.w600,
      AppFonts.plusJakartaSans,
      48.0,
      height,
      letterSpacing,
    );
  }

  static TextStyle display1Medium({
    Color? color,
    double? height,
    double? letterSpacing,
  }) {
    return _baseStyle(
      color,
      FontWeight.w500,
      AppFonts.plusJakartaSans,
      48.0,
      height,
      letterSpacing,
    );
  }

  static TextStyle display1Regular({
    Color? color,
    double? height,
    double? letterSpacing,
  }) {
    return _baseStyle(
      color,
      FontWeight.w400,
      AppFonts.plusJakartaSans,
      48.0,
      height,
      letterSpacing,
    );
  }

  static TextStyle display2Semibold({
    Color? color,
    double? height,
    double? letterSpacing,
  }) {
    return _baseStyle(
      color,
      FontWeight.w600,
      AppFonts.plusJakartaSans,
      40.0,
      height,
      letterSpacing,
    );
  }

  static TextStyle display2Medium({
    Color? color,
    double? height,
    double? letterSpacing,
  }) {
    return _baseStyle(
      color,
      FontWeight.w500,
      AppFonts.plusJakartaSans,
      40.0,
      height,
      letterSpacing,
    );
  }

  static TextStyle display2Regular({
    Color? color,
    double? height,
    double? letterSpacing,
  }) {
    return _baseStyle(
      color,
      FontWeight.w400,
      AppFonts.plusJakartaSans,
      40.0,
      height,
      letterSpacing,
    );
  }

  ///---------- Heading ----------///
  static TextStyle heading1Semibold({
    Color? color,
    double? height,
    double? letterSpacing,
  }) {
    return _baseStyle(
      color,
      FontWeight.w600,
      AppFonts.manrope,
      32.0,
      height,
      letterSpacing,
    );
  }

  static TextStyle heading1Medium({
    Color? color,
    double? height,
    double? letterSpacing,
  }) {
    return _baseStyle(
      color,
      FontWeight.w500,
      AppFonts.manrope,
      32.0,
      height,
      letterSpacing,
    );
  }

  static TextStyle heading1Regular({
    Color? color,
    double? height,
    double? letterSpacing,
  }) {
    return _baseStyle(
      color,
      FontWeight.w400,
      AppFonts.manrope,
      32.0,
      height,
      letterSpacing,
    );
  }

  static TextStyle heading2Semibold({
    Color? color,
    double? height,
    double? letterSpacing,
  }) {
    return _baseStyle(
      color,
      FontWeight.w600,
      AppFonts.manrope,
      28.0,
      height,
      letterSpacing,
    );
  }

  static TextStyle heading2Medium({
    Color? color,
    double? height,
    double? letterSpacing,
  }) {
    return _baseStyle(
      color,
      FontWeight.w500,
      AppFonts.manrope,
      28.0,
      height,
      letterSpacing,
    );
  }

  static TextStyle heading2Regular({
    Color? color,
    double? height,
    double? letterSpacing,
  }) {
    return _baseStyle(
      color,
      FontWeight.w400,
      AppFonts.manrope,
      28.0,
      height,
      letterSpacing,
    );
  }

  static TextStyle heading3Semibold({
    Color? color,
    double? height,
    double? letterSpacing,
  }) {
    return _baseStyle(
      color,
      FontWeight.w600,
      AppFonts.manrope,
      24.0,
      height,
      letterSpacing,
    );
  }

  static TextStyle heading3Medium({
    Color? color,
    double? height,
    double? letterSpacing,
  }) {
    return _baseStyle(
      color,
      FontWeight.w500,
      AppFonts.manrope,
      24.0,
      height,
      letterSpacing,
    );
  }

  static TextStyle heading3Regular({
    Color? color,
    double? height,
    double? letterSpacing,
  }) {
    return _baseStyle(
      color,
      FontWeight.w400,
      AppFonts.manrope,
      24.0,
      height,
      letterSpacing,
    );
  }

  static TextStyle heading4Semibold({
    Color? color,
    double? height,
    double? letterSpacing,
  }) {
    return _baseStyle(
      color,
      FontWeight.w600,
      AppFonts.manrope,
      20.0,
      height,
      letterSpacing,
    );
  }

  static TextStyle heading4Medium({
    Color? color,
    double? height,
    double? letterSpacing,
  }) {
    return _baseStyle(
      color,
      FontWeight.w500,
      AppFonts.manrope,
      20.0,
      height,
      letterSpacing,
    );
  }

  static TextStyle heading4Regular({
    Color? color,
    double? height,
    double? letterSpacing,
  }) {
    return _baseStyle(
      color,
      FontWeight.w400,
      AppFonts.manrope,
      20.0,
      height,
      letterSpacing,
    );
  }

  static TextStyle heading5Semibold({
    Color? color,
    double? height,
    double? letterSpacing,
  }) {
    return _baseStyle(
      color,
      FontWeight.w600,
      AppFonts.manrope,
      18.0,
      height,
      letterSpacing,
    );
  }

  static TextStyle heading5Medium({
    Color? color,
    double? height,
    double? letterSpacing,
  }) {
    return _baseStyle(
      color,
      FontWeight.w500,
      AppFonts.manrope,
      18.0,
      height,
      letterSpacing,
    );
  }

  static TextStyle heading5Regular({
    Color? color,
    double? height,
    double? letterSpacing,
  }) {
    return _baseStyle(
      color,
      FontWeight.w400,
      AppFonts.manrope,
      18.0,
      height,
      letterSpacing,
    );
  }

  static TextStyle heading6Semibold({
    Color? color,
    double? height,
    double? letterSpacing,
  }) {
    return _baseStyle(
      color,
      FontWeight.w600,
      AppFonts.manrope,
      16.0,
      height,
      letterSpacing,
    );
  }

  static TextStyle heading6Medium({
    Color? color,
    double? height,
    double? letterSpacing,
  }) {
    return _baseStyle(
      color,
      FontWeight.w500,
      AppFonts.manrope,
      16.0,
      height,
      letterSpacing,
    );
  }

  static TextStyle heading6Regular({
    Color? color,
    double? height,
    double? letterSpacing,
  }) {
    return _baseStyle(
      color,
      FontWeight.w400,
      AppFonts.manrope,
      16.0,
      height,
      letterSpacing,
    );
  }

  ///---------- Text (Body) ----------///
  static TextStyle textXL({
    Color? color,
    FontWeight? fontWeight,
    double? height,
    double? letterSpacing,
  }) {
    return _baseStyle(
      color,
      fontWeight ?? FontWeight.w400,
      AppFonts.inter,
      18.0,
      height,
      letterSpacing,
    );
  }

  static TextStyle textLG({
    Color? color,
    FontWeight? fontWeight,
    double? height,
    double? letterSpacing,
  }) {
    return _baseStyle(
      color,
      fontWeight ?? FontWeight.w400,
      AppFonts.inter,
      16.0,
      height,
      letterSpacing,
    );
  }

  static TextStyle textMD({
    Color? color,
    FontWeight? fontWeight,
    double? height,
    double? letterSpacing,
  }) {
    return _baseStyle(
      color,
      fontWeight ?? FontWeight.w400,
      AppFonts.inter,
      14.0,
      height,
      letterSpacing,
    );
  }

  static TextStyle textSM({
    Color? color,
    FontWeight? fontWeight,
    double? height,
    double? letterSpacing,
  }) {
    return _baseStyle(
      color,
      fontWeight ?? FontWeight.w400,
      AppFonts.inter,
      12.0,
      height,
      letterSpacing,
    );
  }

  static TextStyle textXS({
    Color? color,
    FontWeight? fontWeight,
    double? height,
    double? letterSpacing,
  }) {
    return _baseStyle(
      color,
      fontWeight ?? FontWeight.w400,
      AppFonts.inter,
      10.0,
      height,
      letterSpacing,
    );
  }

  ///---------- Base Style Helper ----------///
  static TextStyle _baseStyle(
    Color? color,
    FontWeight fontWeight,
    String? fontFamily,
    double fontSize,
    double? height,
    double? letterSpacing,
  ) {
    return TextStyle(
      fontWeight: fontWeight,
      fontFamily: fontFamily ?? AppFonts.mainAppFont,
      fontSize: fontSize,
      height: height ?? 1.0,
      letterSpacing: letterSpacing ?? 0.0,
    );
  }
}
