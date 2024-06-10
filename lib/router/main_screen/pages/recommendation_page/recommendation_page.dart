import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_plus/generated/l10n.dart';

import 'activity_builder/activity_builder.dart';
import 'life_indicators_builder/life_indicators_builder.dart';
import 'sleep_builder/sleep_builder.dart';
import 'weight_builder/weight_builder.dart';

class RecommendationPage extends StatefulWidget {
  const RecommendationPage({super.key});

  @override
  State<RecommendationPage> createState() => _RecommendationPageState();
}

class _RecommendationPageState extends State<RecommendationPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ),
      children: [
        Text(
          S().recommendations,
          style: TextStyle(
            fontFamily: GoogleFonts.roboto().fontFamily,
            color: const Color(0xFF0F2851),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 14),
        const ActivityBuilder(),
        const SizedBox(height: 20),
        const LifeIndicatorsBuilder(),
        const SizedBox(height: 20),
        const WeightBuilder(),
        const SizedBox(height: 20),
        const SleepBuilder(),
      ],
    );
  }
}
