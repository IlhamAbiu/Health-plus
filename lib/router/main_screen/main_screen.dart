import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_plus/domain/user/user_repository.dart';
import 'package:health_plus/generated/l10n.dart';
import 'package:health_plus/router/router.dart';

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
      body: child,
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Text(
          S().good_morning(UserRepository().user?.name ?? 'NA'),
          style: TextStyle(
            fontFamily: GoogleFonts.roboto().fontFamily,
            color: const Color(0xFF2B2B2B),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 17.22),
            child: GestureDetector(
              onTap: () {
                ProfileRoute().push(context);
              },
              child: Icon(
                Icons.account_circle_outlined,
                color: Theme.of(context).colorScheme.onSurface,
                size: 40,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
