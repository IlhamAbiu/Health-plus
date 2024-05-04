import 'package:flutter/material.dart';

import 'components/nav_bar/nav_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: child,
      appBar: AppBar(),
      bottomNavigationBar: const NavBar(),
    );
  }
}
