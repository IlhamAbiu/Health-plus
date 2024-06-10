import 'dart:async';
import 'dart:developer';

import 'package:health/health.dart';
import 'package:health_plus/domain/services/calculate_service/calculate_service.dart';
import 'package:health_plus/domain/services/calculate_service/models/health_metrics_response/health_metrics_response.dart';
import 'package:health_plus/domain/services/calculate_service/models/step_trends_request/step_data.dart';
import 'package:health_plus/domain/services/calculate_service/models/step_trends_request/step_trends_request.dart';
import 'package:health_plus/domain/services/calculate_service/models/step_trends_response/step_trends_response.dart';
import 'package:health_plus/domain/services/health_service/health_service.dart';
import 'package:health_plus/domain/user/user.dart';
import 'package:health_plus/domain/user/user_repository.dart';
import 'package:health_plus/features/health_metrics/health_metrics.dart';

class StepTrends {
  StepTrends._() {
    HealthMetrics().stream.listen((event) {
      _updateData(event);
    });
    _updateData(HealthMetrics().lastLifeMetrics);
  }
  static StepTrends? _instance;
  factory StepTrends() => _instance ??= StepTrends._();

  final _stream = StreamController<StepTrendsResponse?>.broadcast();
  Stream<StepTrendsResponse?> get stream => _stream.stream;
  StepTrendsResponse? _lastSleepMetrics;
  StepTrendsResponse? get lastSleepMetrics => _lastSleepMetrics;

  Future<void> _updateData(HealthMetricsResponse? healthMetrics) async {
    if (healthMetrics != null) {
      final weightList = await HealthService().fetchDataAfter30days(
        types: [HealthDataType.WEIGHT],
      );
      int weight = UserRepository().user?.weight.round() ?? 0;

      if (weightList.isNotEmpty) {
        weight =
            (weightList.last.value as NumericHealthValue).numericValue.round();
      }

      final heightList = await HealthService().fetchDataAfter30days(
        types: [HealthDataType.HEIGHT],
      );
      int height = UserRepository().user?.height ?? 0;
      if (heightList.isNotEmpty) {
        height = ((heightList.last.value as NumericHealthValue)
                    .numericValue
                    .toDouble() *
                100)
            .round();
      }

      final age = DateTime.now().year - UserRepository().user!.birthday.year;
      String gender = '';
      switch (UserRepository().user!.gender) {
        case Gender.male:
          gender = 'male';
          break;
        case Gender.female:
          gender = 'female';
          break;
      }
      String activityLevel = '';

      switch (UserRepository().user!.activityLevel) {
        case ActivityLevel.veryLow:
          activityLevel = 'sedentary';
          break;
        case ActivityLevel.low:
          activityLevel = 'lightly_active';
          break;
        case ActivityLevel.medium:
          activityLevel = 'moderately_active';
          break;
        case ActivityLevel.high:
          activityLevel = 'very_active';
          break;
        case ActivityLevel.veryHigh:
          activityLevel = 'extra_active';
          break;
      }

      final stepsList = await HealthService().fetchDataAfter7days(
        types: [HealthDataType.STEPS],
      );

      final List<StepData> steps = [];
      for (var element in stepsList) {
        if (element.value is NumericHealthValue) {
          steps.add(StepData(
            date: element.dateFrom.toString(),
            steps: (element.value as NumericHealthValue).numericValue.round(),
          ));
        }
      }

      num targetCalories =
          healthMetrics.maintenance_calories! - healthMetrics.TDEE!;
      final stepTrendsResponse = StepTrendsRequest(
        step_data: steps,
        weight_kg: weight,
        height_cm: height,
        age_years: age,
        gender: gender,
        activity_level: activityLevel,
        target_calories: targetCalories,
      );
      try {
        _lastSleepMetrics =
            await CalculateService.calculateStepTrends(stepTrendsResponse);
        _stream.add(_lastSleepMetrics);
      } catch (e) {
        log('Error calculating step trends', error: e);
        rethrow;
      }
    }
  }
}
