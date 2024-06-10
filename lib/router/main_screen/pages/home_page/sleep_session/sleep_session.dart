import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health/health.dart';
import 'package:health_plus/domain/providers/health_provider/health_cubit.dart';
import 'package:health_plus/features/sleep_metrics/models/sleep_metrics_models.dart';

import 'package:health_plus/gen/assets.gen.dart';
import 'package:health_plus/generated/l10n.dart';

import 'sleep_metrics_cubit.dart';

class SleepSession extends StatelessWidget {
  const SleepSession({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          vertical: 10,
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
            final sleepSessionData =
                state.sleepSessionDataList?.isNotEmpty == true
                    ? state.sleepSessionDataList!.last
                    : null;

            DateTime? sleepFrom;
            DateTime? sleepTo;
            num? sleepDuration;

            if (sleepSessionData != null) {
              final sleepSessionValue =
                  sleepSessionData.value as NumericHealthValue;

              sleepFrom = sleepSessionData.dateFrom;
              sleepTo = sleepSessionData.dateTo;
              sleepDuration = sleepSessionValue.numericValue;
            }

            return Row(
              children: [
                Flexible(
                  child: Column(
                    children: [
                      BlocProvider(
                        lazy: false,
                        create: (_) => SleepMetricsCubit(),
                        child:
                            BlocBuilder<SleepMetricsCubit, SleepMetricsModels?>(
                          builder: (context, state) {
                            return Text(
                              state?.sleep_score == null
                                  ? S().no_data
                                  : '${state?.sleep_score.round()}',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: GoogleFonts.roboto().fontFamily,
                                fontSize: state?.sleep_score == null ? 20 : 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        S().sleep_indicator,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: GoogleFonts.roboto().fontFamily,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF88888A),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Flexible(
                  child: sleepSessionData == null
                      ? const SizedBox()
                      : Column(
                          children: [
                            Row(
                              children: [
                                Assets.svg.sleepFrom.svg(),
                                const SizedBox(width: 11),
                                Text(
                                  _dateTimeToTime(sleepFrom),
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.roboto().fontFamily,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFFA5A5A7),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Assets.svg.sleepTo.svg(),
                                const SizedBox(width: 11),
                                Text(
                                  _dateTimeToTime(sleepTo),
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.roboto().fontFamily,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFFA5A5A7),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Assets.svg.sleepDuration.svg(),
                                const SizedBox(width: 11),
                                Text(
                                  _minutesToTime(sleepDuration),
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.roboto().fontFamily,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFFA5A5A7),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  String _dateTimeToTime(DateTime? date) {
    if (date == null) {
      return '';
    }
    return '${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}';
  }

  String _minutesToTime(num? minutes) {
    if (minutes == null) {
      return '';
    }
    return '${minutes ~/ 60}:${(minutes % 60).toString().padLeft(2, '0')}';
  }
}
