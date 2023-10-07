import 'package:flutter/material.dart';
import 'package:sample/core/init/theme/app_theme.dart';
import 'package:sample/core/init/theme/dark/text_theme_dark.dart';

import 'color_scheme_dark.dart';
import 'dark_theme_interface.dart';

class AppThemeDark extends AppTheme with IDarkTheme {
  static AppThemeDark? _instance;

  static AppThemeDark get instance {
    return _instance ??= AppThemeDark._init();
  }

  static const _FONT_FAMILY = 'ROBOTO';

  AppThemeDark._init();

  @override
  ThemeData get theme => ThemeData(
        fontFamily: _FONT_FAMILY,
        colorScheme: _appColorScheme,
        textTheme: textTheme(),
        appBarTheme: ThemeData.dark().appBarTheme.copyWith(
            color: Colors.transparent,
            elevation: 0,
            iconTheme: const IconThemeData(color: Colors.black87, size: 21)),
        inputDecorationTheme: const InputDecorationTheme(
            focusColor: Colors.black12,
            labelStyle: TextStyle(),
            fillColor: Colors.white,
            contentPadding: EdgeInsets.zero,
            filled: true,
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(width: 0.3)),
            // border: OutlineInputBorder(borderSide: BorderSide(width: 0.3)),
            focusedBorder: OutlineInputBorder()),
        scaffoldBackgroundColor: Color(0xfff1f3f8),
        floatingActionButtonTheme:
            ThemeData.dark().floatingActionButtonTheme.copyWith(),
        buttonTheme: ThemeData.dark().buttonTheme.copyWith(
              colorScheme: const ColorScheme.dark(
                onError: Color(0xffFF2D55),
              ),
            ),
        tabBarTheme: tabBarTheme,
      );

  TabBarTheme get tabBarTheme {
    return TabBarTheme(
      labelPadding: insets.lowPaddingAll,
      labelColor: _appColorScheme.onSecondary,
      labelStyle: textThemeDark!.headline5,
      unselectedLabelColor: _appColorScheme.onSecondary.withOpacity(0.2),
      // unselectedLabelStyle: textThemeLight.headline4.copyWith(color: colorSchemeLight.red),
    );
  }

  TextTheme textTheme() {
    return TextThemeDark.instance.getTextTheme();
  }

  ColorScheme get _appColorScheme {
    return ColorSchemeDark.instance.getDarkColorScheme();
  }
}
