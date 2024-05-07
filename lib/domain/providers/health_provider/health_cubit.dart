import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health/health.dart';
import 'package:health_plus/domain/services/health_service/health_service.dart';
import 'package:equatable/equatable.dart';

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
      oxygenDataList = await HealthService().fetchData(
        types: [HealthDataType.BLOOD_OXYGEN],
      );
      diastolicDataList = await HealthService().fetchData(
        types: [HealthDataType.BLOOD_PRESSURE_DIASTOLIC],
      );
      systolicDataList = await HealthService().fetchData(
        types: [HealthDataType.BLOOD_PRESSURE_SYSTOLIC],
      );
      sleepSessionDataList = await HealthService().fetchData(
        types: [HealthDataType.SLEEP_SESSION],
      );
      heartRateDataList = await HealthService().fetchData(
        types: [HealthDataType.HEART_RATE],
      );
      bodyMassDataList = await HealthService().fetchData(
        types: [HealthDataType.WEIGHT],
      );
      bodyFatPercentageDataList = await HealthService().fetchData(
        types: [HealthDataType.BODY_FAT_PERCENTAGE],
      );
      stepsDataList = await HealthService().fetchData(
        types: [HealthDataType.STEPS],
      );
      totalCaloriesBurnedDataList = await HealthService().fetchData(
        types: [HealthDataType.TOTAL_CALORIES_BURNED],
      );
      workoutDataList = await HealthService().fetchData(
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
    } catch (_) {
      rethrow;
    }
  }
}
