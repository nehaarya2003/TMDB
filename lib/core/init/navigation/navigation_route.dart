// The route configuration.
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../../view/onboard/view/onboarding_view.dart';

final GoRouter navigationRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      name: 'root',
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const OnboardingScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return const Text("data");
          },
        ),
      ],
    ),
  ],
);
