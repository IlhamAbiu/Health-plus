import 'package:flutter/material.dart';
import 'package:heath_plus/gen/assets.gen.dart';
import 'package:heath_plus/router/router.dart';
import 'package:heath_plus/router/router_patches.dart';

import 'nav_bar_button.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  NavBarButton get homeButton => NavBarButton(
        value: homePath,
        unselectedIcon: Assets.svg.homeUnselected.svg(),
        selectedIcon: Assets.svg.homeSelected.svg(),
        go: HomeRoute().go,
      );

  NavBarButton get recommendationButton => NavBarButton(
        value: recommendationPath,
        unselectedIcon: Assets.svg.recommendationUnselected.svg(),
        selectedIcon: Assets.svg.recommendationSelected.svg(),
        go: RecommendationRoute().go,
      );

  NavBarButton get statisticsButton => NavBarButton(
        value: statisticsPath,
        unselectedIcon: Assets.svg.statisticsUnselected.svg(),
        selectedIcon: Assets.svg.statisticsSelected.svg(),
        go: StatisticsRoute().go,
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 104 + MediaQuery.of(context).padding.bottom,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow,
            offset: const Offset(0, -15),
            blurRadius: 40,
          ),
        ],
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            homeButton,
            recommendationButton,
            statisticsButton,
          ],
        ),
      ),
    );
  }
}
