import 'package:health_plus/core/network.dart';

import 'models/health_metrics_request/health_metrics_request.dart';
import 'models/health_metrics_response/health_metrics_response.dart';
import 'models/life_metrics_request/life_metrics_request.dart';
import 'models/life_metrics_response/life_metrics_response.dart';
import 'models/resting_pulse_request/resting_pulse_request.dart';
import 'models/resting_pulse_response/resting_pulse_response.dart';
import 'models/step_trends_request/step_trends_request.dart';
import 'models/step_trends_response/step_trends_response.dart';

abstract class CalculateService {
  CalculateService._();

  static const _url = 'http://168.119.250.139:8000';

  static Future<RestingPulseResponse> calculateRestingPulse(
    RestingPulseRequest request,
  ) async {
    try {
      final response = await Network.post('$_url/calculate_resting_pulse/',
          data: request.toJson());
      if (response.statusCode == 200) {
        return RestingPulseResponse.fromJson(response.data);
      } else {
        throw Exception('Failed to calculate resting pulse');
      }
    } catch (e) {
      rethrow;
    }
  }

  static Future<dynamic> calculateSleepMetrics({
    required String sleepStart,
    required String sleepEnd,
    required double totalSleep,
    required int wakeTime,
    required double lightSleep,
    required double deepSleep,
    required double remSleep,
    required double oxygenLevel,
  }) async {
    try {
      final response =
          await Network.post('$_url/calculate_sleep_metrics/', data: {
        'sleep_start': sleepStart,
        'sleep_end': sleepEnd,
        'total_sleep': totalSleep,
        'wake_time': wakeTime,
        'light_sleep': lightSleep,
        'deep_sleep': deepSleep,
        'rem_sleep': remSleep,
        'oxygen_level': oxygenLevel,
      });
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception(
            'Failed to calculate sleep metrics ${response.statusCode}, ${response.data}');
      }
    } catch (e) {
      rethrow;
    }
  }

  static Future<LifeMetricsResponse> calculateLifeMetrics(
      LifeMetricsRequest request) async {
    try {
      final response = await Network.post('$_url/calculate_life_metrics/',
          data: request.toJson());
      if (response.statusCode == 200) {
        return LifeMetricsResponse.fromJson(response.data);
      } else {
        throw Exception('Failed to calculate life metrics');
      }
    } catch (e) {
      rethrow;
    }
  }

  static Future<HealthMetricsResponse> calculateHealthMetrics(
      HealthMetricsRequest request) async {
    try {
      final response = await Network.post('$_url/calculate_health_metrics/',
          data: request.toJson());
      if (response.statusCode == 200) {
        return HealthMetricsResponse.fromJson(response.data);
      } else {
        throw Exception('Failed to calculate health metrics');
      }
    } catch (e) {
      rethrow;
    }
  }

  static Future<StepTrendsResponse> calculateStepTrends(
      StepTrendsRequest request) async {
    try {
      final response = await Network.post('$_url/calculate_step_trends/',
          data: request.toJson());
      if (response.statusCode == 200) {
        return StepTrendsResponse.fromJson(response.data);
      } else {
        throw Exception('Failed to calculate step trends');
      }
    } catch (e) {
      rethrow;
    }
  }
}
