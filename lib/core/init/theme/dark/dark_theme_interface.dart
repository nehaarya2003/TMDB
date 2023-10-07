

import 'package:sample/core/init/theme/dark/color_scheme_dark.dart';
import 'package:sample/core/init/theme/dark/text_theme_dark.dart';

import '../light/padding_insets.dart';

abstract mixin class IDarkTheme {
  TextThemeDark? textThemeDark = TextThemeDark.instance;
  ColorSchemeDark? colorSchemeDark = ColorSchemeDark.instance;
  PaddingInsets insets = PaddingInsets();
}
