import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:provider/provider.dart';
import 'package:sample/core/di/injector_provider.dart';


import 'core/init/navigation/navigation_route.dart';
import 'core/init/notifier/provider_list.dart';
import 'core/init/notifier/theme_notifier.dart';

Future<void> main() async {
  await _init();

  runApp(
    MultiProvider(
      providers: [...ApplicationProvider.instance.dependItems],
      child: const MyApp(),
      ),
  );
}

Future<void> _init() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await Firebase.initializeApp();
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
