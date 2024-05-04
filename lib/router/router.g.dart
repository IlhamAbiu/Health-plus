// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $mainRoute,
      $homeRoute,
      $recommendationRoute,
      $statisticsRoute,
      $appAuthorizationRoute,
      $appLoadingRoute,
    ];

RouteBase get $mainRoute => ShellRouteData.$route(
      factory: $MainRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/home',
          factory: $HomeRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/recommendation',
          factory: $RecommendationRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/statistics',
          factory: $StatisticsRouteExtension._fromState,
        ),
      ],
    );

extension $MainRouteExtension on MainRoute {
  static MainRoute _fromState(GoRouterState state) => const MainRoute();
}

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => HomeRoute();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $RecommendationRouteExtension on RecommendationRoute {
  static RecommendationRoute _fromState(GoRouterState state) =>
      RecommendationRoute();

  String get location => GoRouteData.$location(
        '/recommendation',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $StatisticsRouteExtension on StatisticsRoute {
  static StatisticsRoute _fromState(GoRouterState state) => StatisticsRoute();

  String get location => GoRouteData.$location(
        '/statistics',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/home',
      factory: $HomeRouteExtension._fromState,
    );

RouteBase get $recommendationRoute => GoRouteData.$route(
      path: '/recommendation',
      factory: $RecommendationRouteExtension._fromState,
    );

RouteBase get $statisticsRoute => GoRouteData.$route(
      path: '/statistics',
      factory: $StatisticsRouteExtension._fromState,
    );

RouteBase get $appAuthorizationRoute => GoRouteData.$route(
      path: '/app_authorization',
      factory: $AppAuthorizationRouteExtension._fromState,
    );

extension $AppAuthorizationRouteExtension on AppAuthorizationRoute {
  static AppAuthorizationRoute _fromState(GoRouterState state) =>
      AppAuthorizationRoute();

  String get location => GoRouteData.$location(
        '/app_authorization',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $appLoadingRoute => GoRouteData.$route(
      path: '/app_loading',
      factory: $AppLoadingRouteExtension._fromState,
    );

extension $AppLoadingRouteExtension on AppLoadingRoute {
  static AppLoadingRoute _fromState(GoRouterState state) => AppLoadingRoute();

  String get location => GoRouteData.$location(
        '/app_loading',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
