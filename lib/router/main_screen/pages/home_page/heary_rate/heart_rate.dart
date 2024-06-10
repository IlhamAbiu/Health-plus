import 'dart:async';
import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health/health.dart';
import 'package:health_plus/domain/providers/health_provider/health_cubit.dart';
import 'package:health_plus/domain/services/health_service/health_service.dart';
import 'package:health_plus/gen/assets.gen.dart';
import 'package:health_plus/generated/l10n.dart';
import 'package:health_plus/ui/components/loading_indicator.dart';

class HeartRate extends StatelessWidget {
  const HeartRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          vertical: 11,
          horizontal: 10,
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Assets.svg.heartRate.svg(),
                const SizedBox(width: 15),
                Text(
                  S().pulse_throughout_the_day,
                  style: TextStyle(
                    fontFamily: GoogleFonts.roboto().fontFamily,
                    color: const Color(0xFF202020),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            BlocBuilder<HealthCubit, HealthState>(builder: (context, state) {
              final lastData = state.heartRateDataList?.isNotEmpty == true
                  ? state.heartRateDataList!.last
                  : null;
              final now = DateTime.now();
              final midnight = DateTime(now.year, now.month, now.day);
              final lastDataDate = lastData?.dateFrom ?? DateTime(2020);
              final lastDataMidnight = DateTime(
                  lastDataDate.year, lastDataDate.month, lastDataDate.day);
              if (lastData != null &&
                  lastDataMidnight.isAtSameMomentAs(midnight)) {
                return FutureBuilder(
                  future: _fetchDataToDay(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  S().average,
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.roboto().fontFamily,
                                    color: const Color(0xFF88888A),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  S().pulse_value(snapshot.data![0].toInt()),
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.roboto().fontFamily,
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  S().max,
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.roboto().fontFamily,
                                    color: const Color(0xFF88888A),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  S().pulse_value(snapshot.data![1].toInt()),
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.roboto().fontFamily,
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  S().min,
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.roboto().fontFamily,
                                    color: const Color(0xFF88888A),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  S().pulse_value(snapshot.data![2].toInt()),
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.roboto().fontFamily,
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    } else {
                      return const Center(
                        child: LoadingIndicator(),
                      );
                    }
                  },
                );
              } else {
                return Text(
                  S().no_data_today,
                  style: TextStyle(
                    fontFamily: GoogleFonts.roboto().fontFamily,
                    color: const Color(0xFF88888A),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                );
              }
            }),
          ],
        ),
      ),
    );
  }

  Future<List<num>> _fetchDataToDay() async {
    final list = await HealthService()
        .fetchDataAfterToDay(types: [HealthDataType.HEART_RATE]);
    num? maxValue;
    num? minValue;
    num? average;
    Completer completer = Completer();
    ReceivePort receivePort = ReceivePort();
    final fetchDataToDayIsolate = await Isolate.spawn(_fetchDataToDayIsolate, {
      'send_port': receivePort.sendPort,
      'list': list,
    });

    receivePort.listen((message) {
      maxValue = message['max_value'];
      minValue = message['min_value'];
      average = message['average'];
      fetchDataToDayIsolate.kill();
      completer.complete();
    });
    await completer.future;
    return [average!, maxValue!, minValue!];
  }

  static void _fetchDataToDayIsolate(Map<String, dynamic> args) {
    final SendPort sendPort = args['send_port'];
    final List<HealthDataPoint> list = args['list'];
    num? maxValue;
    num? minValue;
    num? average;
    for (var element in list) {
      final value = element.value as NumericHealthValue;
      final numericValue = value.numericValue;
      maxValue = maxValue == null
          ? numericValue
          : maxValue > numericValue
              ? maxValue
              : numericValue;
      minValue = minValue == null
          ? numericValue
          : minValue < numericValue
              ? minValue
              : numericValue;
    }
    average = (maxValue! + minValue!) / 2;
    sendPort.send({
      'max_value': maxValue,
      'min_value': minValue,
      'average': average,
    });
  }
}
