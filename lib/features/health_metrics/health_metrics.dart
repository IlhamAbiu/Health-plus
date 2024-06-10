import 'dart:async';
import 'dart:developer';

import 'package:health/health.dart';
import 'package:health_plus/domain/services/calculate_service/calculate_service.dart';
import 'package:health_plus/domain/services/calculate_service/models/health_metrics_request/health_metrics_request.dart';
import 'package:health_plus/domain/services/calculate_service/models/health_metrics_response/health_metrics_response.dart';
import 'package:health_plus/domain/services/health_service/health_service.dart';
import 'package:health_plus/domain/user/user.dart';
import 'package:health_plus/domain/user/user_repository.dart';

class HealthMetrics {
  HealthMetrics._() {
    updateData();
  }
  static HealthMetrics? _instance;
  factory HealthMetrics() => _instance ??= HealthMetrics._();

  final _stream = StreamController<HealthMetricsResponse?>.broadcast();
  Stream<HealthMetricsResponse?> get stream => _stream.stream;
  HealthMetricsResponse? _lastLifeMetrics;
  HealthMetricsResponse? get lastLifeMetrics => _lastLifeMetrics;

  Future<void> updateData() async {
    final num weight = await _weight();
    final num bodyFatPercentage = await _bodyFatPercentage();
    final num height = await _height();
    final num basalMetabolism = await _basalMetabolism();
    final num activityLevel = _activityLevel();
    final num avgStepsPerWeek = await _avgStepsPerWeek();
    final num avgCaloriesBurnedPerWeek = await _avgCaloriesBurnedPerWeek();
    final num age = _age();
    final String gender = _gender();

    try {
      final request = HealthMetricsRequest(
        weight: weight,
        body_fat_percentage: bodyFatPercentage,
        height: height,
        basal_metabolism: basalMetabolism,
        activity_level: activityLevel,
        avg_steps_per_week: avgStepsPerWeek,
        avg_calories_burned_per_week: avgCaloriesBurnedPerWeek,
        age: age,
        gender: gender,
      );

      _lastLifeMetrics = await CalculateService.calculateHealthMetrics(request);
      _stream.add(_lastLifeMetrics);
    } catch (e) {
      log('Error calculating life metrics', error: e);
      rethrow;
    }
  }

  Future<num> _weight() async {
    final weight = await HealthService().fetchDataAfter30days(
      types: [HealthDataType.WEIGHT],
    );

    if (weight.isNotEmpty) {
      return (weight.last.value as NumericHealthValue).numericValue;
    } else {
      return 0;
    }
  }

  Future<num> _height() async {
    final height = await HealthService().fetchDataAfter30days(
      types: [HealthDataType.HEIGHT],
    );

    if (height.isNotEmpty) {
      return (height.last.value as NumericHealthValue).numericValue * 100;
    } else {
      return 0;
    }
  }

  num _age() {
    final birthday = UserRepository().user?.birthday;
    final age = DateTime.now().year - birthday!.year;
    return age;
  }

  String _gender() {
    switch (UserRepository().user?.gender) {
      case Gender.male:
        return 'male';
      case Gender.female:
        return 'female';
      default:
        return 'male';
    }
  }

  Future<num> _bodyFatPercentage() async {
    final bodyFatPercentages = await HealthService().fetchDataAfter30days(
      types: [HealthDataType.BODY_FAT_PERCENTAGE],
    );

    if (bodyFatPercentages.isNotEmpty) {
      return (bodyFatPercentages.last.value as NumericHealthValue).numericValue;
    } else {
      return 0;
    }
  }

  Future<num> _basalMetabolism() async {
    final basalEnergyBurned = await HealthService().fetchDataAfter30days(
      types: [HealthDataType.BASAL_ENERGY_BURNED],
    );

    if (basalEnergyBurned.isNotEmpty) {
      return (basalEnergyBurned.last.value as NumericHealthValue).numericValue;
    } else {
      return 0;
    }
  }

  Future<num> _avgStepsPerWeek() async {
    final steps = await HealthService().fetchDataAfter7days(
      types: [HealthDataType.STEPS],
    );

    if (steps.isNotEmpty) {
      int middleSteps = 0;
      int allSteps = 0;
      for (var element in steps) {
        allSteps += (element.value as NumericHealthValue).numericValue.toInt();
      }
      if (allSteps != 0) {
        middleSteps = allSteps ~/ steps.length;
      }
      return middleSteps == 0 ? 5000 : middleSteps;
    } else {
      return 5000;
    }
  }

  Future<num> _avgCaloriesBurnedPerWeek() async {
    final workout = await HealthService().fetchDataAfter7days(
      types: [HealthDataType.WORKOUT],
    );

    if (workout.isNotEmpty) {
      int middleCalories = 0;
      int allCalories = 0;
      for (var element in workout) {
        allCalories +=
            (element.value as WorkoutHealthValue).totalEnergyBurned ?? 0;
      }
      if (allCalories != 0) {
        middleCalories = allCalories ~/ workout.length;
      }
      return middleCalories == 0 ? 550 : middleCalories;
    } else {
      return 550;
    }
  }

  num _activityLevel() {
    switch (UserRepository().user?.activityLevel) {
      case ActivityLevel.veryLow:
        return 1.2;
      case ActivityLevel.low:
        return 1.375;
      case ActivityLevel.medium:
        return 1.55;
      case ActivityLevel.high:
        return 1.72;
      case ActivityLevel.veryHigh:
        return 1.9;
      default:
        return 0;
    }
  }
}
