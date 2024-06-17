import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'app_authorization_screen/app_authorization_screen.dart';
import 'app_loading_screen/app_loading_screen.dart';
import 'blood_oxygen_screen/blood_oxygen_screen.dart';
import 'change_activity_level_screen/change_activity_level_screen.dart';
import 'change_height_screen/change_height_screen.dart';
import 'heart_rate_screen/heart_rate_screen.dart';
import 'main_screen/main_screen.dart';
import 'main_screen/pages/home_page/home_page.dart';
import 'main_screen/pages/recommendation_page/recommendation_page.dart';
import 'main_screen/pages/statistics_page/statistics_page.dart';
import 'profile_screen/profile_screen.dart';
import 'router_patches.dart';
import 'sleep_indicators_screen/sleep_indicators_screen.dart';
import 'steps_screen/steps_screen.dart';
import 'user_input_form/user_input_form.dart';
import 'vital_signs_screen/vital_signs_sreen.dart';
import 'body_parameters_screen/body_parameters_screen.dart';
import 'weight_screen/weight_screen.dart';

part 'router.g.dart';

final router = GoRouter(
  initialLocation: appLoadingPath,
  routes: $appRoutes,
);

CustomTransitionPage _buildPageWithDefaultTransition({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) =>
    CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionDuration: const Duration(milliseconds: 200),
      reverseTransitionDuration: const Duration(milliseconds: 200),
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(
        opacity: animation,
        child: child,
      ),
    );

CustomTransitionPage _buildPageWithNotAnimation({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) =>
    CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionDuration: Duration.zero,
      reverseTransitionDuration: Duration.zero,
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(
        opacity: animation,
        child: child,
      ),
    );

@TypedShellRoute<MainRoute>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<HomeRoute>(path: homePath),
    TypedGoRoute<RecommendationRoute>(path: recommendationPath),
    TypedGoRoute<StatisticsRoute>(path: statisticsPath),
  ],
)
class MainRoute extends ShellRouteData {
  const MainRoute();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    Widget navigator,
  ) {
    return MainScreen(child: navigator);
  }
}

@TypedGoRoute<HomeRoute>(path: homePath)
class HomeRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      _buildPageWithNotAnimation(
        context: context,
        state: state,
        child: const HomePage(),
      );
}

@TypedGoRoute<RecommendationRoute>(path: recommendationPath)
class RecommendationRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      _buildPageWithNotAnimation(
        context: context,
        state: state,
        child: const RecommendationPage(),
      );
}

@TypedGoRoute<StatisticsRoute>(path: statisticsPath)
class StatisticsRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      _buildPageWithNotAnimation(
        context: context,
        state: state,
        child: const StatisticsPage(),
      );
}

@TypedGoRoute<AppAuthorizationRoute>(path: appAuthorizationPath)
class AppAuthorizationRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      _buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const AppAuthorizationScreen(),
      );
}

@TypedGoRoute<AppLoadingRoute>(path: appLoadingPath)
class AppLoadingRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      _buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const AppLoadingScreen(),
      );
}

@TypedGoRoute<HeartRateRoute>(path: heartRatePath)
class HeartRateRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      _buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const HeartRateScreen(),
      );
}

@TypedGoRoute<StepsRoute>(path: stepsPath)
class StepsRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      _buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const StepsScreen(),
      );
}

@TypedGoRoute<WeightRoute>(path: weightPath)
class WeightRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      _buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const WeightScreen(),
      );
}

@TypedGoRoute<BloodOxygenRoute>(path: bloodOxygenPath)
class BloodOxygenRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      _buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const BloodOxygenScreen(),
      );
}

@TypedGoRoute<UserInputFormRoute>(path: userInputFormPath)
class UserInputFormRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      _buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const UserInputForm(),
      );
}

@TypedGoRoute<ProfileRoute>(path: profilePath)
class ProfileRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      _buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const ProfileScreen(),
      );
}

@TypedGoRoute<ChangeActivityLevelRoute>(path: changeActivityLevelPath)
class ChangeActivityLevelRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      _buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const ChangeActivityLevelScreen(),
      );
}

@TypedGoRoute<ChangeHeightRoute>(path: changeHeightPath)
class ChangeHeightRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      _buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const ChangeHeightScreen(),
      );
}

@TypedGoRoute<VitalSignsRoute>(path: vitalSignsPath)
class VitalSignsRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      _buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const VitalSignsScreen(),
      );
}

@TypedGoRoute<BodyParametersRoute>(path: bodyParametersPath)
class BodyParametersRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      _buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const BodyParametersScreen(),
      );
}

@TypedGoRoute<SleepIndicatorsRoute>(path: sleepIndicatorsPath)
class SleepIndicatorsRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      _buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const SleepIndicatorsScreen(),
      );
}
