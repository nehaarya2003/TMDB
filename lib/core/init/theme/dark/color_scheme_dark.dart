import 'package:flutter/material.dart';

class ColorSchemeDark {
  ColorSchemeDark._init();

  static final instance = ColorSchemeDark._init();

  ColorScheme getDarkColorScheme() {
    return const ColorScheme(
        primary: primary,
        primaryContainer: primaryContainer,
        secondary: secondary,
        secondaryContainer: secondaryContainer,
        tertiary: tertiary,
        surface: surface,
        background: onBackground,
        error: error,
        onPrimary: onPrimary,
        onSecondary: onSecondary,
        onSurface: onSurface,
        onBackground: background,
        onError: onError,
        surfaceVariant: surfaceContainerHigh,
        brightness: Brightness.light);
  }

  static const Color primary = Color(0xffD0BCFF);
  static const Color inversePrimary = Color(0xff6750A4);
  static const Color onPrimary = Color(0xFF381E72);
  static const Color primaryContainer = Color(0xff4F378B);
  static const Color onPrimaryContainer = Color(0xffEADDFF);
  static const Color secondary = Color(0xffCCC2DC);
  static const Color onSecondary = Color(0xff332D41);
  static const Color secondaryContainer = Color(0xff4A4458);
  static const Color onSecondaryContainer = Color(0xffE8DEF8);
  static const Color tertiary = Color(0xffEFB8C8);
  static const Color error = Color(0xffF2B8B5);
  static const Color onError = Color(0xff601410);
  static const Color errorContainer = Color(0xff8C1D18);
  static const Color onErrorContainer = Color(0xffF9DEDC);

  static const Color background = Color(0xff141218);
  static const Color onBackground = Color(0xff1C1B1F);
  static const Color outline = Color(0xff938F99);

  static const Color surface = Color(0xff141218);
  static const Color onSurface = Color(0xffE6E0E9);

  static const Color inverseSurface = Color(0xffE6E0E9);
  static const Color onInverseSurface = Color(0xff322F35);
  static const Color surfaceContainerHigh = Color(0xff2B2930);
  static const Color surfaceContainer = Color(0xffF3EDF7);
  static const Color lightGray = Color(0xfff7f7f7);
  static const Color darkGray = Color(0xff676870);
  static const Color black = Color(0xff020306);
  static const Color azure = Color(0xff27928d);
  static const Color buttonBackground = Color(0xffD0BCFF);
}
