import 'package:flutter/material.dart';

class ColorSchemeLight {
  ColorSchemeLight._init();

  static final instance = ColorSchemeLight._init();

  ColorScheme getLightColorScheme() {
    return const ColorScheme(
        primary: primary,
        inversePrimary: inversePrimary,
        primaryContainer: primaryContainer,
        onPrimaryContainer: onPrimaryContainer,
        secondary: secondary,
        secondaryContainer: secondaryContainer,
        onSecondaryContainer: onSecondaryContainer,
        tertiary: tertiary,
        surface: surface,
        background: background,
        error: error,
        onErrorContainer: onErrorContainer,
        onPrimary: onPrimary,
        onSecondary: onSecondary,
        onSurface: onSurface,
        onBackground: Colors.black12,
        onError: onError,
        surfaceVariant: surfaceContainerHigh,
        brightness: Brightness.light);
  }

  static const Color primary = Color(0xff6750A4);
  static const Color inversePrimary = Color(0xffD0BCFF);
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color primaryContainer = Color(0xffEADDFF);
  static const Color onPrimaryContainer = Color(0xff21005D);
  static const Color secondary = Color(0xff625B71);
  static const Color onSecondary = Color(0xffFFFFFF);
  static const Color secondaryContainer = Color(0xffE8DEF8);
  static const Color onSecondaryContainer = Color(0xff1D192B);
  static const Color tertiary = Color(0xff7D5260);
  static const Color error = Color(0xffB3261E);
  static const Color onError = Color(0xffFFFFFF);
  static const Color errorContainer = Color(0xffF9DEDC);
  static const Color onErrorContainer = Color(0xff410E0B);
  static const Color background = Color(0xffFFFBFE);
  static const Color onBackground = Color(0xff1C1B1F);
  static const Color outline = Color(0xff79747E);
  static const Color surface = Color(0xffFEF7FF);
  static const Color inverseSurface = Color(0xff322F35);
  static const Color onInverseSurface = Color(0xffF5EFF7);
  static const Color surfaceContainerHigh = Color(0xffECE6F0);
  static const Color surfaceContainer = Color(0xffF3EDF7);
  static const Color onSurface = Color(0xff1D1B20);
  static const Color lightGray = Color(0xfff7f7f7);
  static const Color darkGray = Color(0xff676870);
  static const Color black = Color(0xff020306);
  static const Color azure = Color(0xff27928d);
  static const Color buttonBackground = Color(0xffD0BCFF);
}
