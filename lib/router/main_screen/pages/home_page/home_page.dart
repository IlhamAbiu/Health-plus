import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_plus/domain/providers/health_provider/health_cubit.dart';
import 'package:health_plus/generated/l10n.dart';
import 'package:health_plus/ui/components/loading_indicator.dart';

import 'blood_oxygen.dart';
import 'blood_pressure.dart';
import 'body_composition.dart';
import 'heart_rate.dart';
import 'sleep_session.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CustomMaterialIndicator(
      onRefresh: context.read<HealthCubit>().fetchData,
      elevation: 0,
      displacement: 20,
      backgroundColor: Colors.transparent,
      autoRebuild: false,
      withRotation: false,
      indicatorBuilder: (context, __) {
        return Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).colorScheme.shadow,
                offset: const Offset(0, 0),
                blurRadius: 5,
              ),
            ],
          ),
          child: const LoadingIndicator(),
        );
      },
      child: ListView(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        children: [
          Text(
            S().measurement_log,
            style: TextStyle(
              fontFamily: GoogleFonts.roboto().fontFamily,
              color: const Color(0xFF0F2851),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 14),
          const BloodPressure(),
          const SizedBox(height: 20),
          const HeartRate(),
          const SizedBox(height: 20),
          const BloodOxygen(),
          const SizedBox(height: 20),
          const BodyComposition(),
          const SizedBox(height: 20),
          const SleepSession(),
        ],
      ),
    );
  }
}
