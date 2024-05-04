import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavBarButton extends StatelessWidget {
  const NavBarButton({
    super.key,
    required this.selectedIcon,
    required this.unselectedIcon,
    required this.value,
    required void Function(BuildContext context) go,
  }) : _go = go;

  final Widget selectedIcon;

  final Widget unselectedIcon;

  final String value;

  final void Function(BuildContext context) _go;

  @override
  Widget build(BuildContext context) {
    final String location = GoRouterState.of(context).uri.path;
    final isSelected = location == value;
    return GestureDetector(
      onTap: () {
        _go(context);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer.withOpacity(
                isSelected ? 1 : 0.0,
              ),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: isSelected ? selectedIcon : unselectedIcon,
        ),
      ),
    );
  }
}
