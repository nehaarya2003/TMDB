import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      "Hello World",
      style: TextStyle(
          color: Color.fromARGB(255, 208, 178, 33),
          fontStyle: FontStyle.italic,
          fontFamily: '.SF UI Text'),
    ));
  }
}
