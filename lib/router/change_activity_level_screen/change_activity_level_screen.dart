import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_plus/domain/user/user.dart';
import 'package:health_plus/domain/user/user_repository.dart';
import 'package:health_plus/generated/l10n.dart';
import 'package:health_plus/router/router.dart';
import 'package:health_plus/ui/components/primary_button.dart';

import 'activity_level_builder.dart';
import 'input_activity_level_cubit.dart';

class ChangeActivityLevelScreen extends StatelessWidget {
  const ChangeActivityLevelScreen({super.key});

  List<ActivityLevelBuilder> get _items => [
        ActivityLevelBuilder(
          activityLevel: ActivityLevel.veryLow,
          title: S().activity_level_very_low_title,
          description: S().activity_level_very_low_description,
        ),
        ActivityLevelBuilder(
          activityLevel: ActivityLevel.low,
          title: S().activity_level_low_title,
          description: S().activity_level_low_description,
        ),
        ActivityLevelBuilder(
          activityLevel: ActivityLevel.medium,
          title: S().activity_level_medium_title,
          description: S().activity_level_medium_description,
        ),
        ActivityLevelBuilder(
          activityLevel: ActivityLevel.high,
          title: S().activity_level_high_title,
          description: S().activity_level_high_description,
        ),
        ActivityLevelBuilder(
          activityLevel: ActivityLevel.veryHigh,
          title: S().activity_level_very_high_title,
          description: S().activity_level_very_high_description,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Text(
          S().change_activity_level,
          style: TextStyle(
            fontFamily: GoogleFonts.roboto().fontFamily,
            color: const Color(0xFF2B2B2B),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            router.pop();
          },
          child: const Icon(
            Icons.arrow_back,
            color: Color(0xFF2B2B2B),
          ),
        ),
      ),
      body: BlocProvider(
        lazy: false,
        create: (context) => InputActivityLevelCubit(),
        child: Column(
          children: [
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                S().set_your_activity_level,
                style: TextStyle(
                  fontFamily: GoogleFonts.roboto().fontFamily,
                  color: const Color(0xFF2B2B2B),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                S().set_your_activity_level_description,
                style: TextStyle(
                  fontFamily: GoogleFonts.roboto().fontFamily,
                  color: const Color(0xFF2B2B2B),
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.separated(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                itemBuilder: (_, index) => _items[index],
                separatorBuilder: (_, __) => const SizedBox(height: 9),
                itemCount: _items.length,
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: BlocBuilder<InputActivityLevelCubit, ActivityLevel?>(
                builder: (context, state) {
                  return Center(
                    child: PrimaryButton(
                      isDisabled: state == null,
                      text: S().apply,
                      onPressed: () {
                        UserRepository().user!.activityLevel = state!;
                        UserRepository().saveUser(UserRepository().user!);
                        router.pop();
                      },
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 28),
          ],
        ),
      ),
    );
  }
}
