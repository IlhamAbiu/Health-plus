import 'dart:async';
import 'dart:developer';

import 'package:health/health.dart';
import 'package:health_plus/domain/services/health_service/health_service.dart';

import '../../domain/services/calculate_service/calculate_service.dart';
import '../resting_pulse/models/resting_pulse_model.dart';
import '../resting_pulse/resting_pulse.dart';
import 'models/life_metrics_model.dart';

class LifeMetrics {
  LifeMetrics._() {
    RestingPulse().stream.listen((event) {
      _updateData(event);
    });
  }
  static LifeMetrics? _instance;
  factory LifeMetrics() => _instance ??= LifeMetrics._();

  final _stream = StreamController<LifeMetricsModel?>.broadcast();
  Stream<LifeMetricsModel?> get stream => _stream.stream;
  LifeMetricsModel? _lastLifeMetrics;
  LifeMetricsModel? get lastLifeMetrics => _lastLifeMetrics;

  Future<void> _updateData(RestingPulseModel? restingPulse) async {
    final int restingHeartRate = restingPulse?.resting_pulse ?? 0;
    int systolicPressure = 0;
    int diastolicPressure = 0;
    int maxHeartRate = 0;
    final oxygenLevel = [95, 98];
    final bloodPressureSystolic = await HealthService().fetchDataAfterToDay(
      types: [HealthDataType.BLOOD_PRESSURE_SYSTOLIC],
    );
    if (bloodPressureSystolic.isNotEmpty) {
      systolicPressure =
          (bloodPressureSystolic.last.value as NumericHealthValue)
              .numericValue
              .toInt();
      for (var element in bloodPressureSystolic) {
        if ((element.value as NumericHealthValue).numericValue >
            systolicPressure) {
          systolicPressure =
              (element.value as NumericHealthValue).numericValue.toInt();
        }
      }
    }

    final bloodPressureDiastolic = await HealthService().fetchDataAfterToDay(
      types: [HealthDataType.BLOOD_PRESSURE_DIASTOLIC],
    );
    if (bloodPressureDiastolic.isNotEmpty) {
      diastolicPressure =
          (bloodPressureDiastolic.last.value as NumericHealthValue)
              .numericValue
              .toInt();
      for (var element in bloodPressureDiastolic) {
        if ((element.value as NumericHealthValue).numericValue <
            diastolicPressure) {
          diastolicPressure =
              (element.value as NumericHealthValue).numericValue.toInt();
        }
      }
    }

    final maxHeartRateList = await HealthService().fetchDataAfterToDay(
      types: [HealthDataType.HEART_RATE],
    );
    if (maxHeartRateList.isNotEmpty) {
      maxHeartRate = (maxHeartRateList.last.value as NumericHealthValue)
          .numericValue
          .toInt();

      for (var element in maxHeartRateList) {
        if ((element.value as NumericHealthValue).numericValue > maxHeartRate) {
          maxHeartRate =
              (element.value as NumericHealthValue).numericValue.toInt();
        }
      }
    }

    try {
      final result = await CalculateService.calculateLifeMetrics(
        systolicPressure: systolicPressure,
        diastolicPressure: diastolicPressure,
        restingHeartRate: restingHeartRate,
        maxHeartRate: maxHeartRate,
        oxygenLevel: oxygenLevel,
      );
      _lastLifeMetrics = LifeMetricsModel.fromJson(result);
      _stream.add(_lastLifeMetrics);
    } catch (e) {
      log('Error calculating life metrics', error: e);
      rethrow;
    }
  }
}
