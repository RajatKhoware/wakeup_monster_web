import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:wakeup_web/main.dart';
import 'package:wakeup_web/my%20web/my_web.dart';

part 'app_routes.dart';

class AppGoRouter {
  static GoRouter router = GoRouter(
    navigatorKey: navigatorKey,
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => MyWeb(),
      ),
    ],
  );
  static GoRoute _createRoute(String path, Widget child) {
    return GoRoute(
      path: path,
      pageBuilder: (context, state) =>
          _buildTransitionPage(context, state, child),
    );
  }

  static Page _buildTransitionPage(
      BuildContext context, GoRouterState state, Widget child) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    );
  }
}
