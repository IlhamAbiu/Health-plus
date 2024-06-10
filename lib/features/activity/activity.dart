import 'dart:async';

import 'package:health/health.dart';
import 'package:health_plus/domain/services/calculate_service/models/health_metrics_response/health_metrics_response.dart';
import 'package:health_plus/domain/services/generate_text/generate_text.dart';
import 'package:health_plus/domain/services/generate_text/models/activity_request/activity_request.dart';
import 'package:health_plus/domain/services/generate_text/models/activity_response/activity_response.dart';
import 'package:health_plus/domain/services/health_service/health_service.dart';
import 'package:health_plus/domain/user/user.dart';
import 'package:health_plus/domain/user/user_repository.dart';
import 'package:health_plus/features/health_metrics/health_metrics.dart';

class Activity {
  Activity._() {
    HealthMetrics().stream.listen((value) {
      _healthMetricsResponse = value;
      generateActivity();
    });
  }
  static Activity? _instance;
  factory Activity() => _instance ??= Activity._();

  final _stream = StreamController<ActivityResponse?>.broadcast();
  Stream<ActivityResponse?> get stream => _stream.stream;
  ActivityResponse? _activityText;
  ActivityResponse? get activityText => _activityText;

  HealthMetricsResponse? _healthMetricsResponse;

  Future<void> generateActivity() async {
    if (_healthMetricsResponse == null) {
      return;
    }

    int height = UserRepository().user?.height ?? 0;
    final heightList = await HealthService().fetchDataAfter30days(
      types: [HealthDataType.HEIGHT],
    );

    if (heightList.isNotEmpty) {
      height = ((heightList.last.value as NumericHealthValue)
                  .numericValue
                  .toDouble() *
              100)
          .round();
    }

    num weight = UserRepository().user?.weight ?? 0;
    final weightList = await HealthService().fetchDataAfter30days(
      types: [HealthDataType.WEIGHT],
    );
    if (weightList.isNotEmpty) {
      weight =
          (weightList.last.value as NumericHealthValue).numericValue.round();
    }

    final age = DateTime.now().year - UserRepository().user!.birthday.year;
    final gender = _gender();

    final bodyFatPercentages = await _bodyFatPercentage();
    final bmi = _healthMetricsResponse!.BMI!;
    final basalMetabolism = await _basalMetabolism();
    final tdee = _healthMetricsResponse!.TDEE!;
    final avgCaloriesBurnedPerDay =
        _healthMetricsResponse!.average_calories_burned_per_day!;
    final avgCaloriesBurnedExercise = await _avgCaloriesBurnedExercise();
    final maintenanceCalories = _healthMetricsResponse!.maintenance_calories!;
    final weightLossCalories = _healthMetricsResponse!.weight_loss_calories!;
    final weightGainCalories = _healthMetricsResponse!.weight_gain_calories!;
    final visceralFatIndex = _healthMetricsResponse!.visceral_fat_index!;

    final request = ActivityRequest(
      height: height,
      weight: weight.toInt(),
      body_fat_percentage: bodyFatPercentages.toInt(),
      bmi: bmi.toInt(),
      basal_metabolism: basalMetabolism.toInt(),
      tdee: tdee.toInt(),
      age: age,
      gender: gender,
      avg_calories_burned_exercise: avgCaloriesBurnedExercise.toInt(),
      avg_calories_burned_walking: avgCaloriesBurnedPerDay.toInt(),
      maintenance_calories: maintenanceCalories.toInt(),
      weight_loss_calories: weightLossCalories.toInt(),
      weight_gain_calories: weightGainCalories.toInt(),
      visceral_fat_index: visceralFatIndex.toInt(),
    );
    final response = await GenerateText.activity(request);
    _activityText = response;
    _stream.add(_activityText);
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

  Future<num> _avgCaloriesBurnedExercise() async {
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
}
