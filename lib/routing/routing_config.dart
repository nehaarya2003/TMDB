import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample/quiz/questions_screen.dart';
import 'package:sample/splash/splash_screen.dart';

import '../quiz/result_screen.dart';

/// The route configuration.
final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          name: 'quiz',
          path: 'quiz',
          builder: (BuildContext context, GoRouterState state) {
            return const QuestionsScreen();
          },
          routes: <RouteBase>[
            GoRoute(
              name: 'result_screen',
              path: 'result_screen',
              builder: (BuildContext context, GoRouterState state) {
                final answers = state.extra! as List<String>;
                return ResultScreen(chosenAnswers: answers);
              },
            ),
          ],
        ),
      ],
    ),
  ],
);
