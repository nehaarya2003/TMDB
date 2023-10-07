import 'package:flutter/material.dart';
import 'package:sample/core/init/theme/dark/color_scheme_dark.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/app_contants.dart';
import '../../enums/app_theme_light.dart';
import '../theme/app_theme_light.dart';
import '../theme/dark/text_theme_dark.dart';

class ThemeNotifier extends ChangeNotifier {
  final SharedPreferences _prefs;

  ThemeNotifier(this._prefs) {
    // load theme from preferences on initialization
    _currentTheme = _prefs.getBool(AppConstants.darkModeOn) == true
        ? ThemeData.dark()
        : AppThemeLight.instance.theme;
    _currenThemeEnum = _prefs.getBool(AppConstants.darkModeOn) == true
        ? AppThemes.dark
        : AppThemes.light;
  }

  late ThemeData _currentTheme;

  late AppThemes _currenThemeEnum;

  /// Applicaton theme enum.
  /// Deafult value is [AppThemes.LIGHT]
  AppThemes get currenThemeEnum => _currenThemeEnum;

  ThemeData get currentTheme => _currentTheme;

  void changeValue(AppThemes theme) {
    if (theme == AppThemes.light) {
      _currentTheme = ThemeData.light();
    } else {
      _currentTheme = ThemeData.dark();
    }
    notifyListeners();
  }

  /// Change your app theme with [currenThemeEnum] value.
  void changeTheme() {
    if (_currenThemeEnum == AppThemes.light) {
      _currentTheme = ThemeData.dark().copyWith(textTheme: TextThemeDark.instance.getTextTheme(),
      colorScheme: ColorSchemeDark.instance.getDarkColorScheme());
      _currenThemeEnum = AppThemes.dark;
    } else {
      _currentTheme = AppThemeLight.instance.theme;
      _currenThemeEnum = AppThemes.light;
    }
    notifyListeners();
  }
}
