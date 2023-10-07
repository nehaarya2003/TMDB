import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:provider/provider.dart';
import 'package:sample/core/di/injector_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';


import 'core/init/navigation/navigation_route.dart';
import 'core/init/notifier/provider_list.dart';
import 'core/init/notifier/theme_notifier.dart';

Future<void> main() async {
  await _init();

  final prefs = await SharedPreferences.getInstance();
  ApplicationProvider.pref=prefs;

  runApp(
    MultiProvider(
      providers: [...ApplicationProvider.instance.dependItems],
      child:  MyApp(pref: prefs),
      ),
  );
}

Future<void> _init() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await Firebase.initializeApp();
}


class MyApp extends StatelessWidget {
  const MyApp( {super.key,required this.pref});

  final SharedPreferences pref;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: navigationRouter,
      theme: context.watch<ThemeNotifier>().currentTheme,
    );
  }
}
