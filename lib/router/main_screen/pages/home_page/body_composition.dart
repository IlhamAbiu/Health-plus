import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health/health.dart';
import 'package:health_plus/domain/providers/health_provider/health_cubit.dart';
import 'package:health_plus/gen/assets.gen.dart';
import 'package:health_plus/generated/l10n.dart';

class BodyComposition extends StatelessWidget {
  const BodyComposition({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(
          top: 22,
          bottom: 11,
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
        child: Column(
          children: [
            BlocBuilder<HealthCubit, HealthState>(
              builder: (context, state) {
                final bodyMass = state.bodyMassDataList?.isNotEmpty == true
                    ? state.bodyMassDataList!.last.value as NumericHealthValue
                    : null;
                final fatMass =
                    state.bodyFatPercentageDataList?.isNotEmpty == true
                        ? state.bodyFatPercentageDataList!.last.value
                            as NumericHealthValue
                        : null;
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Assets.svg.bodyMass.svg(),
                        const SizedBox(height: 11),
                        Text(
                          bodyMass == null
                              ? S().no_data
                              : S().body_mass(
                                  double.parse(
                                    bodyMass.numericValue.toStringAsFixed(1),
                                  ),
                                ),
                          style: TextStyle(
                            fontFamily: GoogleFonts.roboto().fontFamily,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF0F2851),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Assets.svg.muscleMass.svg(),
                        const SizedBox(height: 11),
                        Text(
                          '??',
                          style: TextStyle(
                            fontFamily: GoogleFonts.roboto().fontFamily,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF0F2851),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Assets.svg.fatMass.svg(),
                        const SizedBox(height: 11),
                        Text(
                          fatMass == null
                              ? S().no_data
                              : S().fat_mass(
                                  double.parse(
                                    fatMass.numericValue.toStringAsFixed(1),
                                  ),
                                ),
                          style: TextStyle(
                            fontFamily: GoogleFonts.roboto().fontFamily,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF0F2851),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
            const SizedBox(height: 11),
            Text(
              S().your_body_composition,
              style: TextStyle(
                fontFamily: GoogleFonts.roboto().fontFamily,
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFA5A5A7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
