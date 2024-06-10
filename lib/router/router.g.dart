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
      $heartRateRoute,
      $stepsRoute,
      $weightRoute,
      $bloodOxygenRoute,
      $userInputFormRoute,
      $profileRoute,
      $changeActivityLevelRoute,
      $changeHeightRoute,
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

RouteBase get $heartRateRoute => GoRouteData.$route(
      path: '/heart_rate',
      factory: $HeartRateRouteExtension._fromState,
    );

extension $HeartRateRouteExtension on HeartRateRoute {
  static HeartRateRoute _fromState(GoRouterState state) => HeartRateRoute();

  String get location => GoRouteData.$location(
        '/heart_rate',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $stepsRoute => GoRouteData.$route(
      path: '/steps',
      factory: $StepsRouteExtension._fromState,
    );

extension $StepsRouteExtension on StepsRoute {
  static StepsRoute _fromState(GoRouterState state) => StepsRoute();

  String get location => GoRouteData.$location(
        '/steps',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $weightRoute => GoRouteData.$route(
      path: '/weight',
      factory: $WeightRouteExtension._fromState,
    );

extension $WeightRouteExtension on WeightRoute {
  static WeightRoute _fromState(GoRouterState state) => WeightRoute();

  String get location => GoRouteData.$location(
        '/weight',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $bloodOxygenRoute => GoRouteData.$route(
      path: '/blood_oxygen',
      factory: $BloodOxygenRouteExtension._fromState,
    );

extension $BloodOxygenRouteExtension on BloodOxygenRoute {
  static BloodOxygenRoute _fromState(GoRouterState state) => BloodOxygenRoute();

  String get location => GoRouteData.$location(
        '/blood_oxygen',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $userInputFormRoute => GoRouteData.$route(
      path: '/user_input_form',
      factory: $UserInputFormRouteExtension._fromState,
    );

extension $UserInputFormRouteExtension on UserInputFormRoute {
  static UserInputFormRoute _fromState(GoRouterState state) =>
      UserInputFormRoute();

  String get location => GoRouteData.$location(
        '/user_input_form',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $profileRoute => GoRouteData.$route(
      path: '/profile',
      factory: $ProfileRouteExtension._fromState,
    );

extension $ProfileRouteExtension on ProfileRoute {
  static ProfileRoute _fromState(GoRouterState state) => ProfileRoute();

  String get location => GoRouteData.$location(
        '/profile',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $changeActivityLevelRoute => GoRouteData.$route(
      path: '/change_activity_level',
      factory: $ChangeActivityLevelRouteExtension._fromState,
    );

extension $ChangeActivityLevelRouteExtension on ChangeActivityLevelRoute {
  static ChangeActivityLevelRoute _fromState(GoRouterState state) =>
      ChangeActivityLevelRoute();

  String get location => GoRouteData.$location(
        '/change_activity_level',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $changeHeightRoute => GoRouteData.$route(
      path: '/change_height',
      factory: $ChangeHeightRouteExtension._fromState,
    );

extension $ChangeHeightRouteExtension on ChangeHeightRoute {
  static ChangeHeightRoute _fromState(GoRouterState state) =>
      ChangeHeightRoute();

  String get location => GoRouteData.$location(
        '/change_height',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
