import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_plus/generated/l10n.dart';
import 'package:health_plus/router/router.dart';

import 'percent_rem_sleep.dart';
import 'percent_light_sleep.dart';
import 'sleep_efficiency.dart';
import 'percent_deep_sleep.dart';
import 'sleep_latency.dart';

class SleepIndicatorsScreen extends StatelessWidget {
  const SleepIndicatorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
        titleSpacing: 0,
        title: Text(
          S().body_parameters,
          style: GoogleFonts.roboto(
            color: const Color(0xFF0F2851),
            fontSize: 20,
            fontWeight: FontWeight.w700,
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
      body: ListView(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        children: const [
          SleepEfficiency(),
          SizedBox(height: 20),
          SleepLatency(),
          SizedBox(height: 20),
          PercentDeepSleep(),
          SizedBox(height: 20),
          PercentRemSleep(),
          SizedBox(height: 20),
          PercentLightSleep(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
