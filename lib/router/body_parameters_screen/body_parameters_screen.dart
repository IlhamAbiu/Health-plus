import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_plus/generated/l10n.dart';
import 'package:health_plus/router/router.dart';

import 'basal_metabolism.dart';
import 'body_mass_index.dart';
import 'maintenance_calories.dart';
import 'weight.dart';
import 'visceral_fat_index.dart';
import 'body_fat.dart';
import 'weight_gain_calories.dart';
import 'weight_loss_calories.dart';

class BodyParametersScreen extends StatelessWidget {
  const BodyParametersScreen({super.key});

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
          Weight(),
          SizedBox(height: 20),
          BodyFat(),
          SizedBox(height: 20),
          VisceralFatIndex(),
          SizedBox(height: 20),
          BasalMetabolism(),
          SizedBox(height: 20),
          MaintenanceCalories(),
          SizedBox(height: 20),
          WeightGainCalories(),
          SizedBox(height: 20),
          WeightLossCalories(),
          SizedBox(height: 20),
          BodyMassIndex(),
        ],
      ),
    );
  }
}
