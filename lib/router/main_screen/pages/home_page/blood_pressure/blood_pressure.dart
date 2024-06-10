import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health/health.dart';
import 'package:health_plus/domain/providers/health_provider/health_cubit.dart';
import 'package:health_plus/gen/assets.gen.dart';
import 'package:health_plus/generated/l10n.dart';

class BloodPressure extends StatelessWidget {
  const BloodPressure({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 20,
        ),
        constraints: const BoxConstraints(maxWidth: 330),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.shadow,
              offset: const Offset(0, 0),
              blurRadius: 40,
            ),
          ],
        ),
        child: BlocBuilder<HealthCubit, HealthState>(
          builder: (context, state) {
            final diastolic = state.diastolicDataList?.isNotEmpty == true
                ? state.diastolicDataList!.last.value as NumericHealthValue
                : null;
            final systolic = state.systolicDataList?.isNotEmpty == true
                ? state.systolicDataList!.last.value as NumericHealthValue
                : null;
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.svg.bloodPressure.svg(),
                    const SizedBox(width: 21),
                    Flexible(
                      child: Text(
                        _text(diastolic, systolic),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: GoogleFonts.roboto().fontFamily,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  S().blood_pressure,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: GoogleFonts.roboto().fontFamily,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF88888A),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  String _text(NumericHealthValue? diastolic, NumericHealthValue? systolic) {
    if (diastolic == null || systolic == null) {
      return S().no_data;
    }
    return S().blood_pressure_value(
      systolic.numericValue.toInt(),
      diastolic.numericValue.toInt(),
    );
  }
}
