import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path/path.dart';

import 'color_scheme_light.dart';

class TextThemeLight {
  TextThemeLight._init();

  static final instance = TextThemeLight._init();

  TextTheme getTextTheme() {
    return TextTheme(
      displayLarge: displayLarge,
      displayMedium: displayMedium,
      displaySmall: displaySmall,
      titleLarge: titleLarge,
      titleMedium: titleMedium,
      titleSmall: titleSmall,
      labelLarge: labelLarge,
      labelMedium: labelMedium,
      bodyLarge: bodyLarge,
      bodyMedium: bodyMedium,
      bodySmall: bodySmall,
      headlineLarge: headlineLarge,
      headlineMedium: displayLarge,
      headlineSmall: displaySmall,
      labelSmall: labelSmall,
    );
  }

  final TextStyle headline1 = const TextStyle(
    fontSize: 96,
    fontWeight: FontWeight.w300,
    letterSpacing: -1.5,
  );
  final TextStyle headline2 = const TextStyle(
    fontSize: 60,
    fontWeight: FontWeight.w300,
    letterSpacing: -0.5,
  );
  final TextStyle headline3 = const TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.w400,
  );
  final TextStyle headline4 = const TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
  );
  final TextStyle headline5 = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
  );
  final TextStyle overline = const TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
  );
  final TextStyle displaySmall = GoogleFonts.roboto(
      fontSize: 36,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
      color: ColorSchemeLight.onPrimary);
  final TextStyle displayLarge = GoogleFonts.roboto(
      fontSize: 57,
      fontWeight: FontWeight.w400,
      letterSpacing: 1,
      color: ColorSchemeLight.onPrimary);
  final TextStyle displayMedium = GoogleFonts.roboto(
      fontSize: 45,
      fontWeight: FontWeight.w400,
      letterSpacing: 1,
      color: ColorSchemeLight.onPrimary);

  final TextStyle headlineLarge = GoogleFonts.roboto(
      fontSize: 32,
      fontWeight: FontWeight.w400,
      letterSpacing: 1,
      color: ColorSchemeLight.onSurface);
  final TextStyle headlineMedium = GoogleFonts.roboto(
      fontSize: 28,
      fontWeight: FontWeight.w400,
      letterSpacing: 1,
      color: ColorSchemeLight.onSurface);
  final TextStyle headlineSmall = GoogleFonts.roboto(
      fontSize: 24,
      fontWeight: FontWeight.w400,
      letterSpacing: 1,
      color: ColorSchemeLight.onSurface);

  final TextStyle titleLarge = GoogleFonts.roboto(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      letterSpacing: 1,
      color: ColorSchemeLight.onSurface);
  final TextStyle titleMedium = GoogleFonts.roboto(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      letterSpacing: 1,
      color: ColorSchemeLight.onSurface);
  final TextStyle titleSmall = GoogleFonts.roboto(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 1,
      color: ColorSchemeLight.onSurface);

  final TextStyle labelLarge = GoogleFonts.roboto(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 1,
      color: ColorSchemeLight.primary);
  final TextStyle labelMedium = GoogleFonts.roboto(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      letterSpacing: 1,
      color: ColorSchemeLight.onSurface);
  final TextStyle labelSmall = GoogleFonts.roboto(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      letterSpacing: 1,
      color: ColorSchemeLight.onSurface);
  final TextStyle bodyLarge = GoogleFonts.roboto(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      letterSpacing: 1,
      color: ColorSchemeLight.onSurface);
  final TextStyle bodyMedium = GoogleFonts.roboto(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 1,
      color: ColorSchemeLight.onSurface);
  final TextStyle bodySmall = GoogleFonts.roboto(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      letterSpacing: 1,
      color: ColorSchemeLight.onSurface);
}
