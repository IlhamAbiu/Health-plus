import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:health/health.dart';
import 'package:health_plus/core/utils.dart';
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
    _read();
    HealthMetrics().stream.listen((value) async {
      _lastLifeMetrics = value;

      final json = await Utils().read(_key);
      if (json != null) {
        _activityText = ActivityResponse.fromJson(jsonDecode(json));
        _stream.add(_activityText);
      }
      if (_activityText == null) {
        generateActivity();
      }
    });
  }
  static Activity? _instance;
  factory Activity() => _instance ??= Activity._();

  final _stream = StreamController<ActivityResponse?>.broadcast();
  Stream<ActivityResponse?> get stream => _stream.stream;
  ActivityResponse? _activityText;
  ActivityResponse? get activityText => _activityText;

  static const String _key = 'activity_text';

  HealthMetricsResponse? _lastLifeMetrics;

  void _read() async {
    final json = await Utils().read(_key);
    if (json != null) {
      _activityText = ActivityResponse.fromJson(jsonDecode(json));
      _stream.add(_activityText);
    }
  }

  Future<void> generateActivity() async {
    if (_lastLifeMetrics == null) {
      return;
    }

    _activityText = null;
    _stream.add(_activityText);

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

      final weightRequest = ActivityRequest(
        step_trends: stepTrends,
        target_calories: targerCalories,
        age: age,
        gender: gender,
      );

      final response = await GenerateText.activity(weightRequest);
      _activityText = response;
      _stream.add(_activityText);
      Utils().write(_key, jsonEncode(_activityText!.toJson()));
    } catch (e) {
      log('Error generating activity', error: e);
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
