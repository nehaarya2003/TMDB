import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';


import 'core/init/navigation/navigation_route.dart';
import 'core/init/notifier/provider_list.dart';
import 'core/init/notifier/theme_notifier.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [...ApplicationProvider.instance.dependItems],
      child: const MyApp(),
      ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: navigationRouter,
      theme: context.watch<ThemeNotifier>().currentTheme,
    );
  }
}
