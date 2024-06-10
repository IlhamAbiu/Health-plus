import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health/health.dart';
import 'package:health_plus/domain/services/health_service/health_service.dart';
import 'package:equatable/equatable.dart';
import 'package:health_plus/features/activity/activity.dart';
import 'package:health_plus/features/health_metrics/health_metrics.dart';
import 'package:health_plus/features/life_indicators/life_indicators.dart';
import 'package:health_plus/features/life_metrics/life_metrics.dart';
import 'package:health_plus/features/resting_pulse/resting_pulse.dart';
import 'package:health_plus/features/sleep/sleep.dart';
import 'package:health_plus/features/sleep_metrics/sleep_metrics.dart';
import 'package:health_plus/features/step_trends/step_trends.dart';
import 'package:health_plus/features/weight/weight.dart';

part 'health_state.dart';

class HealthCubit extends Cubit<HealthState> {
  HealthCubit() : super(const HealthState());

  List<HealthDataPoint>? oxygenDataList;
  List<HealthDataPoint>? diastolicDataList;
  List<HealthDataPoint>? systolicDataList;
  List<HealthDataPoint>? sleepSessionDataList;
  List<HealthDataPoint>? heartRateDataList;
  List<HealthDataPoint>? bodyMassDataList;
  List<HealthDataPoint>? bodyFatPercentageDataList;
  List<HealthDataPoint>? stepsDataList;
  List<HealthDataPoint>? totalCaloriesBurnedDataList;
  List<HealthDataPoint>? workoutDataList;

  Future<void> fetchData() async {
    try {
      oxygenDataList = await HealthService().fetchDataAfter30days(
        types: [HealthDataType.BLOOD_OXYGEN],
      );
      diastolicDataList = await HealthService().fetchDataAfter30days(
        types: [HealthDataType.BLOOD_PRESSURE_DIASTOLIC],
      );
      systolicDataList = await HealthService().fetchDataAfter30days(
        types: [HealthDataType.BLOOD_PRESSURE_SYSTOLIC],
      );
      sleepSessionDataList = await HealthService().fetchDataAfter2days(
        types: [HealthDataType.SLEEP_SESSION],
      );
      heartRateDataList = await HealthService().fetchDataAfterToDay(
        types: [HealthDataType.HEART_RATE],
      );
      bodyMassDataList = await HealthService().fetchDataAfter30days(
        types: [HealthDataType.WEIGHT],
      );
      bodyFatPercentageDataList = await HealthService().fetchDataAfter30days(
        types: [HealthDataType.BODY_FAT_PERCENTAGE],
      );
      stepsDataList = await HealthService().fetchDataAfter30days(
        types: [HealthDataType.STEPS],
      );
      totalCaloriesBurnedDataList = await HealthService().fetchDataAfterToDay(
        types: [HealthDataType.TOTAL_CALORIES_BURNED],
      );
      workoutDataList = await HealthService().fetchDataAfterToDay(
        types: [HealthDataType.WORKOUT],
      );
      emit(
        HealthState(
          oxygenDataList: oxygenDataList,
          diastolicDataList: diastolicDataList,
          systolicDataList: systolicDataList,
          sleepSessionDataList: sleepSessionDataList,
          heartRateDataList: heartRateDataList,
          bodyMassDataList: bodyMassDataList,
          bodyFatPercentageDataList: bodyFatPercentageDataList,
          stepsDataList: stepsDataList,
          totalCaloriesBurnedDataList: totalCaloriesBurnedDataList,
          workoutDataList: workoutDataList,
        ),
      );
      LifeIndicators();
      Activity();
      Weight();
      Sleep();

      StepTrends();
      LifeMetrics();
      HealthMetrics();
      RestingPulse().updateData();
      SleepMetrics().updateData();
    } catch (_) {
      rethrow;
    }
  }
}
