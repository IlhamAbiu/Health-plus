import 'dart:async';
import 'dart:developer';

import 'package:health/health.dart';
import 'package:health_plus/domain/services/calculate_service/models/resting_pulse_response/resting_pulse_response.dart';
import 'package:health_plus/domain/services/health_service/health_service.dart';

import '../../domain/services/calculate_service/calculate_service.dart';
import '../resting_pulse/resting_pulse.dart';
import '../../domain/services/calculate_service/models/life_metrics_request/life_metrics_request.dart';
import '../../domain/services/calculate_service/models/life_metrics_response/life_metrics_response.dart';

class LifeMetrics {
  LifeMetrics._() {
    RestingPulse().stream.listen((event) {
      _updateData(event);
    });
    _updateData(RestingPulse().lastRestingPulse);
  }
  static LifeMetrics? _instance;
  factory LifeMetrics() => _instance ??= LifeMetrics._();

  final _stream = StreamController<LifeMetricsResponse?>.broadcast();
  Stream<LifeMetricsResponse?> get stream => _stream.stream;
  LifeMetricsResponse? _lastLifeMetrics;
  LifeMetricsResponse? get lastLifeMetrics => _lastLifeMetrics;

  Future<void> _updateData(RestingPulseResponse? restingPulse) async {
    final int restingHeartRate = restingPulse?.resting_pulse ?? 0;
    int systolicPressure = 0;
    int diastolicPressure = 0;
    int maxHeartRate = 0;
    final oxygenLevel = [95, 98];
    final bloodPressureSystolic = await HealthService().fetchDataAfter30days(
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

    final bloodPressureDiastolic = await HealthService().fetchDataAfter30days(
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

    final maxHeartRateList = await HealthService().fetchDataAfter30days(
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
      final request = LifeMetricsRequest(
        systolic_pressure: systolicPressure,
        diastolic_pressure: diastolicPressure,
        resting_heart_rate: restingHeartRate,
        max_heart_rate: maxHeartRate,
        oxygen_levels: oxygenLevel,
      );

      _lastLifeMetrics = await CalculateService.calculateLifeMetrics(request);
      _stream.add(_lastLifeMetrics);
    } catch (e) {
      log('Error calculating life metrics', error: e);
      rethrow;
    }
  }
}
