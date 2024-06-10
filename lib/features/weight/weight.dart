import 'dart:async';
import 'dart:developer';

import 'package:health/health.dart';
import 'package:health_plus/domain/services/calculate_service/models/health_metrics_response/health_metrics_response.dart';
import 'package:health_plus/domain/services/generate_text/generate_text.dart';
import 'package:health_plus/domain/services/generate_text/models/weight_request/weight_request.dart';
import 'package:health_plus/domain/services/generate_text/models/weight_response/weight_response.dart';
import 'package:health_plus/domain/services/health_service/health_service.dart';
import 'package:health_plus/domain/user/user.dart';
import 'package:health_plus/domain/user/user_repository.dart';

import 'package:health_plus/features/health_metrics/health_metrics.dart';

class Weight {
  Weight._() {
    HealthMetrics().stream.listen((lastLifeMetrics) {
      _lastLifeMetrics = lastLifeMetrics;
      updateData();
    });
  }
  static Weight? _instance;
  factory Weight() => _instance ??= Weight._();

  final _stream = StreamController<WeightResponse?>();
  Stream<WeightResponse?> get stream => _stream.stream;
  WeightResponse? _lastWeight;
  WeightResponse? get lastWeight => _lastWeight;

  HealthMetricsResponse? _lastLifeMetrics;

  Future<void> updateData() async {
    if (_lastLifeMetrics == null) {
      return;
    }
    try {
      final targerCalories = _lastLifeMetrics!.maintenance_calories!.toInt() -
          _lastLifeMetrics!.TDEE!.toInt();
      final age = DateTime.now().year - UserRepository().user!.birthday.year;
      final gender = _gender();
      DateTime today = DateTime.now();
      DateTime thisMonday = getStartOfWeek(today);
      DateTime lastMonday = thisMonday.subtract(const Duration(days: 7));
      DateTime lastSunday = thisMonday.subtract(const Duration(days: 1));
      final lastWeekStepsList = await HealthService().fetchData(
        startTime: lastMonday,
        endTime: lastSunday,
        types: [HealthDataType.STEPS],
      );

      int lastWeekSteps = 0;
      for (final step in lastWeekStepsList) {
        lastWeekSteps +=
            (step.value as NumericHealthValue).numericValue.toInt();
      }

      final lastWeekStepsPerDay = lastWeekSteps /
          (lastWeekStepsList.isNotEmpty ? lastWeekStepsList.length : 1);

      final currentWeekStepsList = await HealthService().fetchData(
        startTime: thisMonday,
        endTime: today,
        types: [HealthDataType.STEPS],
      );
      int currentWeekSteps = 0;
      for (final step in currentWeekStepsList) {
        currentWeekSteps +=
            (step.value as NumericHealthValue).numericValue.toInt();
      }

      final currentWeekStepsPerDay = currentWeekSteps /
          (currentWeekStepsList.isNotEmpty ? currentWeekStepsList.length : 1);

      final difference = currentWeekStepsPerDay - lastWeekStepsPerDay;
      final percentageChange = ((difference == 0 ? 0 : difference) /
          (lastWeekSteps == 0 ? 1 : lastWeekSteps));

      String stepTrends = '';
      if (difference > 0) {
        stepTrends = 'Увеличение на ${percentageChange.round()}%';
      } else if (difference < 0) {
        stepTrends = 'Уменьшение на ${percentageChange.abs().round()}%';
      } else {
        stepTrends = 'Нет изменений';
      }

      final weightRequest = WeightRequest(
        step_trends: stepTrends,
        target_calories: targerCalories,
        age: age,
        gender: gender,
      );

      _lastWeight = await GenerateText.weight(weightRequest);

      _stream.add(_lastWeight);
    } catch (e) {
      log('Error updating weight', error: e);
      rethrow;
    }
  }

  String _gender() {
    return UserRepository().user!.gender == Gender.male ? 'male' : 'female';
  }

  DateTime getStartOfWeek(DateTime date) {
    int dayOfWeek = date.weekday;
    int difference = dayOfWeek - DateTime.monday;

    DateTime startOfWeek = date.subtract(Duration(days: difference));

    return DateTime(startOfWeek.year, startOfWeek.month, startOfWeek.day);
  }
}
