import 'dart:async';
import 'dart:isolate';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health/health.dart';
import 'package:health_plus/domain/services/health_service/health_service.dart';
import 'package:health_plus/gen/assets.gen.dart';
import 'package:health_plus/generated/l10n.dart';
import 'package:health_plus/router/router.dart';
import 'package:health_plus/ui/components/loading_indicator.dart';

class BloodOxygen extends StatelessWidget {
  const BloodOxygen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: 200,
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 17,
        ),
        constraints: const BoxConstraints(maxWidth: 330),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(10),
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
            Row(
              children: [
                Assets.svg.bloodOxygen.svg(),
                const SizedBox(width: 27),
                Expanded(
                  child: Text(
                    S().blood_oxygen,
                    style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF0F2851),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    BloodOxygenRoute().push(context);
                  },
                  child: Assets.svg.arrowForward.svg(),
                )
              ],
            ),
            const SizedBox(height: 23),
            Expanded(
              child: FutureBuilder(
                future: _fetchData(),
                initialData: const <int, int?>{},
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const LoadingIndicator();
                  }

                  return LineChart(
                    duration: Duration.zero,
                    LineChartData(
                      gridData: const FlGridData(show: false),
                      minX: 0,
                      maxX: 6,
                      minY: 85,
                      maxY: 100,
                      borderData: FlBorderData(show: false),
                      lineBarsData: [
                        LineChartBarData(
                          color: const Color(0xFF64A9FB),
                          isStrokeCapRound: true,
                          barWidth: 3,
                          dotData: const FlDotData(show: false),
                          spots: snapshot.requireData.entries.map(
                            (entry) {
                              return FlSpot(
                                entry.key.toDouble(),
                                entry.value?.toDouble() ?? 0,
                              );
                            },
                          ).toList(),
                        ),
                      ],
                      titlesData: FlTitlesData(
                        rightTitles:
                            const AxisTitles(drawBelowEverything: false),
                        topTitles: const AxisTitles(drawBelowEverything: false),
                        leftTitles: AxisTitles(
                          drawBelowEverything: true,
                          sideTitles: SideTitles(
                            interval: 5,
                            reservedSize: 50,
                            showTitles: true,
                            getTitlesWidget: (value, meta) {
                              return SideTitleWidget(
                                axisSide: meta.axisSide,
                                child: Text(
                                  '${value.toInt().toString()}%',
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.roboto().fontFamily,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xFF898D9E),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        bottomTitles: AxisTitles(
                          drawBelowEverything: true,
                          sideTitles: SideTitles(
                            showTitles: true,
                            getTitlesWidget: (value, meta) {
                              late String day;
                              switch (value.toInt()) {
                                case 0:
                                  day = S().monday;
                                  break;
                                case 1:
                                  day = S().tuesday;
                                  break;
                                case 2:
                                  day = S().wednesday;
                                  break;
                                case 3:
                                  day = S().thursday;
                                  break;
                                case 4:
                                  day = S().friday;
                                  break;
                                case 5:
                                  day = S().saturday;
                                  break;
                                case 6:
                                  day = S().sunday;
                                  break;
                                default:
                                  day = '';
                              }
                              return SideTitleWidget(
                                axisSide: meta.axisSide,
                                child: Text(
                                  day,
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.roboto().fontFamily,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xFF898D9E),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<Map<int, int?>> _fetchData() async {
    Map<int, int?> oxygen = {};
    final list = await HealthService().fetchDataAfter7days(
      types: [HealthDataType.BLOOD_OXYGEN],
    );
    if (list.isNotEmpty) {
      Completer completer = Completer();
      ReceivePort receivePort = ReceivePort();
      final fetchDataIsolate = await Isolate.spawn(_fetchDataIsolate, {
        'send_port': receivePort.sendPort,
        'list': list,
      });
      receivePort.listen((message) {
        oxygen = message['oxygen'];
        fetchDataIsolate.kill();
        completer.complete();
      });
      await completer.future;
    }
    return oxygen;
  }

  static void _fetchDataIsolate(Map<String, dynamic> args) {
    final SendPort sendPort = args['send_port'];
    final List<HealthDataPoint> list = args['list'];

    final data = <int, int?>{};

    int lastDay = list.last.dateTo.weekday;

    num maxValue = (list.last.value as NumericHealthValue).numericValue;
    num minValue = (list.last.value as NumericHealthValue).numericValue;

    for (var element in list.reversed) {
      final date = element.dateTo;
      final dayOfWeek = date.weekday;
      if (lastDay != dayOfWeek) {
        if (lastDay < dayOfWeek) {
          break;
        }
        lastDay = dayOfWeek;
        final value = element.value as NumericHealthValue;
        maxValue = value.numericValue;
        minValue = value.numericValue;
      }
      final value = element.value as NumericHealthValue;
      if (maxValue < value.numericValue) {
        maxValue = value.numericValue;
      }
      if (minValue > value.numericValue) {
        minValue = value.numericValue;
      }
      final average = (maxValue + minValue) / 2;
      data[lastDay - 1] = average.toInt();
    }
    sendPort.send({
      'oxygen': data,
    });
  }
}
