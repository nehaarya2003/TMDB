
import 'package:flutter/material.dart';

class ColorSchemeLight {
  ColorSchemeLight._init();

  static final instance = ColorSchemeLight._init();

  ColorScheme getLightColorScheme() {
    return const ColorScheme(
        primary: black,
        primaryContainer: primaryContainer,
        //xx
        secondary: secondary,
        secondaryContainer: secondaryContainer,
        tertiary: tertiary,
        surface: surface,
        //xx
        background: background,
        //xx
        error: error,
        onPrimary: onPrimary,
        onSecondary: onSecondary,
        //x
        onSurface: onSurface,
        onBackground: Colors.black12,
        onError: onError,
        //xx
        brightness: Brightness.light);
  }

  static const Color primary = Color(0xFFFFFFFF);
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color primaryContainer = Color(0xFF000000);
  static const Color secondary = Color(0xff625B71);
  static const Color onSecondary = Color(0xffFFFFFF);
  static const Color secondaryContainer = Color(0xffE8DEF8);
  static const Color tertiary = Color(0xff7D5260);
  static const Color error = Color(0xffB3261E);
  static const Color onError = Color(0xffFFFFFF);
  static const Color errorContainer = Color(0xffF9DEDC);
  static const Color background = Color(0xffFFFBFE);
  static const Color onBackground = Color(0xff1C1B1F);
  static const Color outline = Color(0xff79747E);
  static const Color surface = Color(0xffFFFBFE);
  static const Color onSurface = Color(0xff1C1B1F);
  static const Color lightGray = Color(0xfff7f7f7);
  static const Color darkGray = Color(0xff676870);
  static const Color black = Color(0xff020306);
  static const Color azure = Color(0xff27928d);
}
