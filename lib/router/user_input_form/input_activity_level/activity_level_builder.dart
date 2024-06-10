import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_plus/domain/user/user.dart';

import 'input_activity_level_cubit.dart';

class ActivityLevelBuilder extends StatelessWidget {
  const ActivityLevelBuilder({
    super.key,
    required this.activityLevel,
    required this.title,
    required this.description,
  });

  final ActivityLevel activityLevel;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InputActivityLevelCubit, ActivityLevel?>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            context
                .read<InputActivityLevelCubit>()
                .setActivityLevel(activityLevel);
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
            width: double.infinity,
            decoration: BoxDecoration(
              color: state == activityLevel
                  ? const Color(0xFF0066FF).withOpacity(0.5)
                  : Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.shadow,
                  offset: const Offset(0, 0),
                  blurRadius: 40,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.inter(
                    color: state == activityLevel ? Colors.white : Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  description,
                  style: GoogleFonts.inter(
                    color: state == activityLevel
                        ? Colors.white
                        : const Color(0xFFBBBBBD),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
