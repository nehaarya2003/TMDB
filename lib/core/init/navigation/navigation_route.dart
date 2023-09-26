// The route configuration.
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:sample/view/auth/view/auth_view.dart';
import 'package:sample/view/content/view/content_view.dart';
import 'package:sample/view/detail/view/detail_view.dart';
import 'package:sample/view/fav/view/fav_view.dart';
import 'package:sample/view/setting/view/setting_view.dart';

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
          name: 'auth',
          path: 'auth',
          builder: (BuildContext context, GoRouterState state) {
            return AuthView();
          },
        ),
        GoRoute(
          name: 'content',
          path: 'content',
          builder: (BuildContext context, GoRouterState state) {
            return const ContentView();
          },
        ),
        GoRoute(
          name: 'details',
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return DetailView();
          },
        ),
        GoRoute(
          name: 'setting',
          path: 'setting',
          builder: (BuildContext context, GoRouterState state) {
            return SettingView();
          },
        ),
        GoRoute(
          name: 'fav',
          path: 'fav',
          builder: (BuildContext context, GoRouterState state) {
            return FavView();
          },
        ),
      ],
    ),
  ],
);
