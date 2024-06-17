import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_plus/generated/l10n.dart';
import 'package:health_plus/router/router.dart';

import 'average_blood_pressure.dart';
import 'average_pulse_at_rest.dart';
import 'pulsate_pressure.dart';

class VitalSignsScreen extends StatelessWidget {
  const VitalSignsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
        titleSpacing: 0,
        title: Text(
          S().life_indicators,
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
          AverageBloodPressure(),
          SizedBox(height: 20),
          PulsatePressure(),
          SizedBox(height: 20),
          AveragePulseAtRest(),
        ],
      ),
    );
  }
}
