import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../design/color.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryGreenColor,
      child: GestureDetector(
        onTap: () {
          Future.delayed(const Duration(seconds: 1));
          context.go("/profile");
        },
        child: const Center(
          child: Image(
              height: 200,
              width: 200,
              image: AssetImage('assets/images/logo.png')),
        ),
      ),
    );
  }
}