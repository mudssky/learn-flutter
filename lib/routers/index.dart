import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_flutter/practices/index.dart';

import '../pages/detail/index.dart';
import '../pages/home/index.dart';

/// The route configuration.
final GoRouter globalRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) =>
              const DetailsScreen(),
        ),
        GoRoute(
            path: 'practices',
            builder: (BuildContext context, GoRouterState state) {
              return const PracticeIndex();
            },
            routes: generateRoutes(practiceList))
      ],
    ),
  ],
);

// 根据简单的路由列表，生成goRoute
List<RouteBase> generateRoutes(List<RouterItem> list) {
  return list
      .map((e) => GoRoute(
          path: "${e.path}",
          builder: (BuildContext context, GoRouterState state) =>
              e.constructor))
      .toList();
}
