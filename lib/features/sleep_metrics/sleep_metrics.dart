import 'dart:async';
import 'dart:developer';

import 'package:health/health.dart';
import 'package:health_plus/domain/services/calculate_service/calculate_service.dart';
import 'package:health_plus/domain/services/health_service/health_service.dart';
import 'package:intl/intl.dart';

import 'models/sleep_metrics_models.dart';

class SleepMetrics {
  SleepMetrics._();
  static SleepMetrics? _instance;
  factory SleepMetrics() => _instance ??= SleepMetrics._();

  final _stream = StreamController<SleepMetricsModels?>.broadcast();
  Stream<SleepMetricsModels?> get stream => _stream.stream;
  SleepMetricsModels? _lastSleepMetrics;
  SleepMetricsModels? get lastSleepMetrics => _lastSleepMetrics;

  Future<void> updateData() async {
    final healthService = HealthService();
    final sleepSessions2days = await healthService.fetchDataAfter2days(
      types: [HealthDataType.SLEEP_SESSION],
    );
    if (sleepSessions2days.isNotEmpty) {
      final sleepSession = sleepSessions2days.last;
      final sleepAwakeAfter2days = await healthService.fetchDataAfter2days(
        types: [HealthDataType.SLEEP_AWAKE],
      );
      final sleepLightAfter2days = await healthService.fetchDataAfter2days(
        types: [HealthDataType.SLEEP_LIGHT],
      );
      final sleepDeepAfter2days = await healthService.fetchDataAfter2days(
        types: [HealthDataType.SLEEP_DEEP],
      );
      final remSleepAfter2days = await healthService.fetchDataAfter2days(
        types: [HealthDataType.SLEEP_REM],
      );
      final bloodOxygenAfter2days = await healthService.fetchDataAfter2days(
        types: [HealthDataType.BLOOD_OXYGEN],
      );
      String sleepStart = DateFormat('HH:mm').format(sleepSession.dateFrom);
      String sleepEnd = DateFormat('HH:mm').format(sleepSession.dateTo);
      double totalSleep =
          (sleepSession.value as NumericHealthValue).numericValue / 60;
      int wakeTime = 0;
      double lightSleep = 0;
      double deepSleep = 0;
      double remSleep = 0;
      double oxygenLevel = 98;

      if (sleepAwakeAfter2days.isNotEmpty) {
        final sessions = <HealthDataPoint>[];
        for (var element in sleepAwakeAfter2days) {
          if (element.dateFrom.isAfter(sleepSession.dateFrom) &&
              element.dateTo.isBefore(sleepSession.dateTo)) {
            sessions.add(element);
          }
        }
        int time = 0;
        for (var element in sessions) {
          time += (element.value as NumericHealthValue).numericValue.toInt();
        }
        wakeTime = time;
      }

      if (sleepLightAfter2days.isNotEmpty) {
        final sessions = <HealthDataPoint>[];
        for (var element in sleepLightAfter2days) {
          if (element.dateFrom.isAfter(sleepSession.dateFrom) &&
              element.dateTo.isBefore(sleepSession.dateTo)) {
            sessions.add(element);
          }
        }

        int time = 0;
        for (var element in sessions) {
          time += (element.value as NumericHealthValue).numericValue.toInt();
        }
        lightSleep = time / 60;
      }

      if (sleepDeepAfter2days.isNotEmpty) {
        final sessions = <HealthDataPoint>[];
        for (var element in sleepDeepAfter2days) {
          if (element.dateFrom.isAfter(sleepSession.dateFrom) &&
              element.dateTo.isBefore(sleepSession.dateTo)) {
            sessions.add(element);
          }
        }

        int time = 0;
        for (var element in sessions) {
          time += (element.value as NumericHealthValue).numericValue.toInt();
        }
        deepSleep = time / 60;
      }

      if (remSleepAfter2days.isNotEmpty) {
        final sessions = <HealthDataPoint>[];
        for (var element in remSleepAfter2days) {
          if (element.dateFrom.isAfter(sleepSession.dateFrom) &&
              element.dateTo.isBefore(sleepSession.dateTo)) {
            sessions.add(element);
          }
        }

        int time = 0;
        for (var element in sessions) {
          time += (element.value as NumericHealthValue).numericValue.toInt();
        }
        remSleep = time / 60;
      }

      if (bloodOxygenAfter2days.isNotEmpty) {
        final sessions = <HealthDataPoint>[];
        for (var element in bloodOxygenAfter2days) {
          if (element.dateFrom.isAfter(sleepSession.dateFrom) &&
              element.dateTo.isBefore(sleepSession.dateTo)) {
            sessions.add(element);
          }
        }
        if (sessions.isNotEmpty) {
          final initialValue = sessions.first.value as NumericHealthValue;
          int min = initialValue.numericValue.toInt();
          int max = initialValue.numericValue.toInt();
          for (var element in sessions) {
            final value = element.value as NumericHealthValue;
            if (min > value.numericValue.toInt()) {
              min = value.numericValue.toInt();
            }
            if (max < value.numericValue.toInt()) {
              max = value.numericValue.toInt();
            }
          }
          oxygenLevel = (max + min) / 2;
        }
      }

      final result = await CalculateService.calculateSleepMetrics(
        sleepStart: sleepStart,
        sleepEnd: sleepEnd,
        totalSleep: totalSleep,
        wakeTime: wakeTime,
        lightSleep: lightSleep,
        deepSleep: deepSleep,
        remSleep: remSleep,
        oxygenLevel: oxygenLevel,
      );
      try {
        _lastSleepMetrics = SleepMetricsModels.fromJson(result);
        _stream.add(_lastSleepMetrics);
      } catch (e) {
        log('Error calculating sleep metrics', error: e);
        rethrow;
      }
    } else {
      _stream.add(null);
    }
  }
}
