import 'dart:async';
import 'dart:developer';
import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health/health.dart';
import 'package:health_plus/domain/providers/health_provider/health_cubit.dart';
import 'package:health_plus/domain/services/health_service/health_service.dart';
import 'package:health_plus/generated/l10n.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Steps extends StatelessWidget {
  const Steps({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          vertical: 19,
          horizontal: 22,
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
        child: BlocBuilder<HealthCubit, HealthState>(
          builder: (context, state) {
            return FutureBuilder(
              initialData: 0,
              future: _fetchDataToDay(),
              builder: (context, snapshot) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: snapshot.connectionState == ConnectionState.done
                            ? S().steps_to_day_current(snapshot.requireData)
                            : S().calculation,
                        style: TextStyle(
                          fontFamily: GoogleFonts.roboto().fontFamily,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            //text: '${S().steps_to_day_target(10000)}',
                            text: '\n/??',
                            style: TextStyle(
                              fontFamily: GoogleFonts.roboto().fontFamily,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: const Color(0xFF88888A),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Builder(builder: (context) {
                      final percent = snapshot.requireData / 10000;
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              S().steps_to_day_percent((percent * 100).toInt()),
                            ),
                            const SizedBox(height: 4),
                            LinearPercentIndicator(
                              padding: const EdgeInsets.all(0),
                              width: 100.0,
                              lineHeight: 10.0,
                              percent: percent > 1 ? 1 : percent,
                              animationDuration: 300,
                              animation: true,
                              animateFromLastPercent: true,
                              barRadius: const Radius.circular(4),
                              backgroundColor: const Color(0xFFE5E6EE),
                              progressColor: const Color(0xFF0DD072),
                            ),
                          ],
                        ),
                      );
                    }),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }

  Future<int> _fetchDataToDay() async {
    final list = await HealthService()
        .fetchDataAfterToDay(types: [HealthDataType.STEPS]);
    int steps = 0;
    if (list.isNotEmpty) {
      try {
        Completer completer = Completer();
        ReceivePort receivePort = ReceivePort();
        final fetchDataToDayIsolate =
            await Isolate.spawn(_fetchDataToDayIsolate, {
          'send_port': receivePort.sendPort,
          'list': list,
        });
        receivePort.listen((message) {
          steps = message['steps'];
          fetchDataToDayIsolate.kill();
          completer.complete();
        });
        await completer.future;
      } catch (e, st) {
        log(
          'Error fetching data to day',
          error: e,
          stackTrace: st,
        );
      }
    }
    return steps;
  }

  static void _fetchDataToDayIsolate(Map<String, dynamic> args) {
    final SendPort sendPort = args['send_port'];
    final List<HealthDataPoint> list = args['list'];
    num steps = 0;
    for (var element in list) {
      final value = element.value as NumericHealthValue;
      steps += value.numericValue;
    }
    sendPort.send({
      'steps': steps,
    });
  }
}
