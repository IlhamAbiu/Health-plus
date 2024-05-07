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

class BloodOxygenScreen extends StatelessWidget {
  const BloodOxygenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Text(
          S().blood_oxygen,
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
          if (state.oxygenDataList?.isNotEmpty == true) {
            return FutureBuilder(
              future: _fetchDataToDay(state.oxygenDataList!),
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
                                horizontal: 20,
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
                                  Assets.svg.bloodOxygen.svg(),
                                  const SizedBox(width: 16),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          S().blood_oxygen_value(
                                              entry.value.toInt()),
                                          style: TextStyle(
                                            fontFamily:
                                                GoogleFonts.roboto().fontFamily,
                                            color: const Color(0xFF0F2851),
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        Text(
                                          S().average_value_throughout_the_day,
                                          style: TextStyle(
                                            fontFamily:
                                                GoogleFonts.roboto().fontFamily,
                                            color: const Color(0xFFB2AEAE),
                                            fontSize: 14,
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

  Future<Map<DateTime, num>> _fetchDataToDay(List<HealthDataPoint> list) async {
    Map<DateTime, num> data = {};
    Completer completer = Completer();
    ReceivePort receivePort = ReceivePort();
    final fetchDataToDayIsolate = await Isolate.spawn(_fetchDataToDayIsolate, {
      'send_port': receivePort.sendPort,
      'list': list,
    });

    receivePort.listen((message) {
      data = message;
      fetchDataToDayIsolate.kill();
      completer.complete();
    });
    await completer.future;
    return data;
  }

  static void _fetchDataToDayIsolate(Map<String, dynamic> args) {
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
