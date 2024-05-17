import 'dart:async';
import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health/health.dart';
import 'package:health_plus/domain/providers/health_provider/health_cubit.dart';
import 'package:health_plus/gen/assets.gen.dart';
import 'package:health_plus/generated/l10n.dart';
import 'package:health_plus/router/router.dart';
import 'package:health_plus/ui/components/loading_indicator.dart';
import 'package:intl/intl.dart';

class WeightScreen extends StatelessWidget {
  const WeightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Text(
          S().weight,
          style: TextStyle(
            fontFamily: GoogleFonts.roboto().fontFamily,
            color: const Color(0xFF2B2B2B),
            fontSize: 16,
            fontWeight: FontWeight.w500,
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
      body: BlocBuilder<HealthCubit, HealthState>(
        builder: (context, state) {
          if (state.bodyMassDataList?.isNotEmpty == true) {
            return FutureBuilder(
              future: _parseData(
                state.bodyMassDataList!,
                state.bodyFatPercentageDataList!,
              ),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return ListView.separated(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 20,
                    ),
                    itemCount: snapshot.requireData.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 17),
                    itemBuilder: (context, index) {
                      final entry =
                          snapshot.requireData.entries.elementAt(index);
                      String formattedDate =
                          DateFormat('d MMMM').format(entry.key);
                      String dayOfWeek = DateFormat('E').format(entry.key);
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ' $formattedDate - $dayOfWeek',
                            style: TextStyle(
                              fontFamily: GoogleFonts.roboto().fontFamily,
                              color: const Color(0xFFB2AEAE),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 19),
                          Center(
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(
                                vertical: 16,
                                horizontal: 24,
                              ),
                              constraints: const BoxConstraints(maxWidth: 330),
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.surface,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Theme.of(context).colorScheme.shadow,
                                    offset: const Offset(0, 0),
                                    blurRadius: 40,
                                  ),
                                ],
                              ),
                              child: Row(
                                children: [
                                  Assets.svg.weight.svg(),
                                  const SizedBox(width: 16),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          S().weight,
                                          style: TextStyle(
                                            fontFamily:
                                                GoogleFonts.roboto().fontFamily,
                                            color: const Color(0xFF979BAA),
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          S().body_mass(
                                              entry.value[0]?.toInt() ?? 0),
                                          style: TextStyle(
                                            fontFamily:
                                                GoogleFonts.roboto().fontFamily,
                                            color: const Color(0xFF0F2851),
                                            fontSize: 24,
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
                                          S().percent_body_fat,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily:
                                                GoogleFonts.roboto().fontFamily,
                                            color: const Color(0xFF979BAA),
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          entry.value[1] != null
                                              ? S().fat_mass(
                                                  entry.value[1]!.toInt(),
                                                )
                                              : S().no_data,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily:
                                                GoogleFonts.roboto().fontFamily,
                                            color: const Color(0xFF0F2851),
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                }
                return const Center(
                  child: LoadingIndicator(),
                );
              },
            );
          } else {
            return Center(
              child: Text(
                S().no_data,
                style: TextStyle(
                  fontFamily: GoogleFonts.roboto().fontFamily,
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          }
        },
      ),
    );
  }

  Future<Map<DateTime, List<num?>>> _parseData(
    List<HealthDataPoint> weightList,
    List<HealthDataPoint> bodyFatList,
  ) async {
    Map<DateTime, List<num?>> data = {};
    Map<DateTime, num> weightAverageList = {};
    Map<DateTime, num> bodyFatAverageList = {};
    Completer completerWeight = Completer();
    ReceivePort receivePortWeight = ReceivePort();
    final parseDataWeightIsolate = await Isolate.spawn(_parseDataIsolate, {
      'send_port': receivePortWeight.sendPort,
      'list': weightList,
    });

    receivePortWeight.listen((message) {
      weightAverageList = message;
      parseDataWeightIsolate.kill();
      completerWeight.complete();
    });

    Completer completerBodyFat = Completer();
    ReceivePort receivePortBodyFat = ReceivePort();
    final parseDataBodyFatIsolate = await Isolate.spawn(_parseDataIsolate, {
      'send_port': receivePortBodyFat.sendPort,
      'list': bodyFatList,
    });

    receivePortBodyFat.listen((message) {
      bodyFatAverageList = message;
      parseDataBodyFatIsolate.kill();
      completerBodyFat.complete();
    });

    await Future.wait([
      completerBodyFat.future,
      completerWeight.future,
    ]);

    weightAverageList.forEach((key, value) {
      data[key] = [
        value,
        bodyFatAverageList[key],
      ];
    });
    return data;
  }

  static void _parseDataIsolate(Map<String, dynamic> args) {
    final SendPort sendPort = args['send_port'];
    final List<HealthDataPoint> list = args['list'];
    final data = <DateTime, num>{};
    num maxValue = (list.last.value as NumericHealthValue).numericValue;
    num minValue = (list.last.value as NumericHealthValue).numericValue;
    num average;
    DateTime previewDate = DateTime(
      list.last.dateTo.year,
      list.last.dateTo.month,
      list.last.dateTo.day,
    );
    for (var element in list.reversed) {
      final date = DateTime(
        element.dateTo.year,
        element.dateTo.month,
        element.dateTo.day,
      );
      if (previewDate != date) {
        average = (maxValue + minValue) / 2;
        data[previewDate] = average;
        previewDate = date;
        maxValue = (element.value as NumericHealthValue).numericValue;
        minValue = (element.value as NumericHealthValue).numericValue;
      }
      final value = element.value as NumericHealthValue;
      if (maxValue < value.numericValue) {
        maxValue = value.numericValue;
      }
      if (minValue > value.numericValue) {
        minValue = value.numericValue;
      }
    }
    average = (maxValue + minValue) / 2;
    data[previewDate] = average;
    sendPort.send(data);
  }
}
