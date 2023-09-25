import 'package:flutter/material.dart';


import 'core/init/navigation/navigation_route.dart';
import 'core/init/theme/app_theme_light.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: navigationRouter,
      theme: AppThemeLight.instance.theme,
    );
  }
}
