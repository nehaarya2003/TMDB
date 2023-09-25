

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path/path.dart';

import 'color_scheme_light.dart';

class TextThemeLight {
  TextThemeLight._init();

  static final instance = TextThemeLight._init();


  TextTheme getTextTheme() {
    return TextTheme(
      displayLarge: headline1,
      displayMedium: headline2,
      displaySmall: headline3,
      headlineMedium: displayLarge,
      headlineSmall: displaySmall,
      labelSmall: overline,
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
      color: ColorSchemeLight.primary);
  final TextStyle displayLarge = GoogleFonts.roboto(
      fontSize: 57,
      fontWeight: FontWeight.w400,
      letterSpacing: 1,
      color: ColorSchemeLight.primary);
}
