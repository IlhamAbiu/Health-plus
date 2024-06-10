import 'dart:async';
import 'dart:developer';
import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health/health.dart';
import 'package:health_plus/domain/providers/health_provider/health_cubit.dart';
import 'package:health_plus/domain/services/calculate_service/models/health_metrics_response/health_metrics_response.dart';
import 'package:health_plus/domain/services/calculate_service/models/step_trends_response/step_trends_response.dart';
import 'package:health_plus/domain/services/health_service/health_service.dart';
import 'package:health_plus/gen/assets.gen.dart';
import 'package:health_plus/generated/l10n.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'ring_calories_cubit.dart';
import 'ring_steps_cubit.dart';

class ActivityRings extends StatelessWidget {
  const ActivityRings({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 12,
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
            return FutureBuilder(
              initialData: const [0, 0, 0],
              future: _fetchDataToDay(),
              builder: (context, snapshot) {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Assets.svg.steps.svg(),
                                  const SizedBox(width: 14),
                                  Text(
                                    snapshot.connectionState ==
                                            ConnectionState.done
                                        ? S().steps(snapshot.requireData[0])
                                        : S().calculation,
                                    style: TextStyle(
                                      fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Assets.svg.time.svg(),
                                  const SizedBox(width: 14),
                                  Text(
                                    snapshot.connectionState ==
                                            ConnectionState.done
                                        ? S().time(snapshot.requireData[1])
                                        : S().calculation,
                                    style: TextStyle(
                                      fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Assets.svg.calories.svg(),
                                  const SizedBox(width: 14),
                                  Text(
                                    snapshot.connectionState ==
                                            ConnectionState.done
                                        ? S().calories(snapshot.requireData[2])
                                        : S().calculation,
                                    style: TextStyle(
                                      fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              BlocProvider(
                                lazy: false,
                                create: (context) => RingStepsCubit(),
                                child: BlocBuilder<RingStepsCubit,
                                    StepTrendsResponse?>(
                                  builder: (context, state) {
                                    return Center(
                                      child: Builder(
                                        builder: (context) {
                                          final percent = state?.steps_needed !=
                                                  null
                                              ? snapshot.requireData[0] /
                                                  state!.steps_needed
                                              : snapshot.requireData[0] / 5000;
                                          return SizedBox(
                                            width: 70,
                                            height: 70,
                                            child: Center(
                                              child: CircularPercentIndicator(
                                                radius: 35.0,
                                                lineWidth: 5.0,
                                                animationDuration: 300,
                                                animation: true,
                                                percent:
                                                    percent > 1 ? 1 : percent,
                                                animateFromLastPercent: true,
                                                circularStrokeCap:
                                                    CircularStrokeCap.round,
                                                progressColor:
                                                    const Color(0xFF04D563),
                                                backgroundColor:
                                                    const Color(0xFFCDF7E0),
                                                widgetIndicator: Center(
                                                  child: Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            right: 5),
                                                    width: 2.71,
                                                    height: 2.71,
                                                    decoration:
                                                        const BoxDecoration(
                                                      color: Colors.white,
                                                      shape: BoxShape.circle,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Center(
                                child: Builder(
                                  builder: (context) {
                                    final percent =
                                        snapshot.requireData[1] / 100;
                                    return SizedBox(
                                      width: 56.3,
                                      height: 56.3,
                                      child: Center(
                                        child: CircularPercentIndicator(
                                          radius: 28.15,
                                          lineWidth: 5.0,
                                          animationDuration: 300,
                                          animation: true,
                                          percent: percent >= 1 ? 1 : percent,
                                          animateFromLastPercent: true,
                                          circularStrokeCap:
                                              CircularStrokeCap.round,
                                          progressColor:
                                              const Color(0xFF7CB4FE),
                                          backgroundColor:
                                              const Color(0xFFDCEAFF),
                                          widgetIndicator: Center(
                                            child: Container(
                                              margin: const EdgeInsets.only(
                                                  right: 5),
                                              width: 2.71,
                                              height: 2.71,
                                              decoration: const BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              BlocProvider(
                                lazy: false,
                                create: (context) => RingCaloriesCubit(),
                                child: BlocBuilder<RingCaloriesCubit,
                                    HealthMetricsResponse?>(
                                  builder: (context, state) {
                                    return Center(
                                      child: Builder(
                                        builder: (context) {
                                          final percent = state
                                                          ?.maintenance_calories !=
                                                      null &&
                                                  state?.TDEE != null
                                              ? snapshot.requireData[2] /
                                                  (state!.maintenance_calories! -
                                                      state.TDEE!)
                                              : snapshot.requireData[2] / 550;
                                          return SizedBox(
                                            width: 42.6,
                                            height: 42.6,
                                            child: Center(
                                              child: CircularPercentIndicator(
                                                radius: 21.3,
                                                lineWidth: 5.0,
                                                animationDuration: 300,
                                                animation: true,
                                                percent:
                                                    percent >= 1 ? 1 : percent,
                                                animateFromLastPercent: true,
                                                circularStrokeCap:
                                                    CircularStrokeCap.round,
                                                progressColor:
                                                    const Color(0xFFFC6FB3),
                                                backgroundColor:
                                                    const Color(0xFFFCDAEA),
                                                widgetIndicator: Center(
                                                  child: Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            right: 5),
                                                    width: 2.71,
                                                    height: 2.71,
                                                    decoration:
                                                        const BoxDecoration(
                                                      color: Colors.white,
                                                      shape: BoxShape.circle,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }

  Future<List<int>> _fetchDataToDay() async {
    final stepsDataList = await HealthService()
        .fetchDataAfterToDay(types: [HealthDataType.STEPS]);
    final workoutDataList = await HealthService()
        .fetchDataAfterToDay(types: [HealthDataType.WORKOUT]);

    int steps = 0;
    int time = 0;
    int calories = 0;

    Completer completerCalories = Completer();
    Completer completerSteps = Completer();
    Completer completerTime = Completer();
    if (stepsDataList.isNotEmpty) {
      try {
        ReceivePort receivePort = ReceivePort();
        final isolate = await Isolate.spawn(_fetchDataToDayStepsIsolate, {
          'send_port': receivePort.sendPort,
          'list': stepsDataList,
        });
        receivePort.listen((message) {
          steps = message['steps'];
          isolate.kill();
          completerSteps.complete();
        });
      } catch (e, st) {
        log('steps error $e $st');
        completerSteps.complete();
      }
    } else {
      completerSteps.complete();
    }
    if (workoutDataList.isNotEmpty) {
      try {
        ReceivePort receivePort = ReceivePort();
        final isolate = await Isolate.spawn(_fetchDataToDayTimeIsolate, {
          'send_port': receivePort.sendPort,
          'list': workoutDataList,
        });
        receivePort.listen((message) {
          time = message['time'];
          isolate.kill();
          completerTime.complete();
        });
      } catch (e, st) {
        log('time error $e $st');
        completerTime.complete();
      }
    } else {
      completerTime.complete();
    }
    if (workoutDataList.isNotEmpty) {
      try {
        ReceivePort receivePort = ReceivePort();
        final isolate =
            await Isolate.spawn(_fetchDataToDayTotalCaloriesBurnedIsolate, {
          'send_port': receivePort.sendPort,
          'list': workoutDataList,
        });
        receivePort.listen((message) {
          calories = message['calories'];
          isolate.kill();
          completerCalories.complete();
        });
      } catch (e, st) {
        log('calories error $e $st');
        completerCalories.complete();
      }
    } else {
      completerCalories.complete();
    }
    await Future.wait([
      completerSteps.future,
      completerCalories.future,
      completerTime.future
    ]);
    return [steps, time, calories];
  }

  static void _fetchDataToDayStepsIsolate(Map<String, dynamic> args) {
    final SendPort sendPort = args['send_port'];
    final List<HealthDataPoint> list = args['list'];
    num steps = 0;
    for (var element in list) {
      final value = element.value as NumericHealthValue;
      steps += value.numericValue;
    }
    sendPort.send({
      'steps': steps.toInt(),
    });
  }

  static void _fetchDataToDayTimeIsolate(Map<String, dynamic> args) {
    final SendPort sendPort = args['send_port'];
    final List<HealthDataPoint> list = args['list'];

    num time = 0;
    for (var element in list) {
      final seconds = element.dateTo.millisecondsSinceEpoch -
          element.dateFrom.millisecondsSinceEpoch;
      time += (seconds / 60000);
    }
    sendPort.send({
      'time': time.round(),
    });
  }

  static void _fetchDataToDayTotalCaloriesBurnedIsolate(
      Map<String, dynamic> args) {
    final SendPort sendPort = args['send_port'];
    final List<HealthDataPoint> list = args['list'];
    num calories = 0;
    for (var element in list) {
      final value = element.value as WorkoutHealthValue;
      calories += value.totalEnergyBurned ?? 0;
    }
    sendPort.send({
      'calories': calories.round(),
    });
  }
}
