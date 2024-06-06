import 'package:health/health.dart';
import 'package:health_plus/core/network.dart';

abstract class CalculateService {
  CalculateService._();

  static const url = 'http://168.119.250.139:8000';

  static void calculateHealthMetrics({
    required double weight,
    required double height,
  }) async {}

  static Future<dynamic> calculateRestingPulse(
    List<HealthDataPoint> pulseData,
  ) async {
    try {
      final map = <Map<String, dynamic>>[];
      for (var element in pulseData) {
        map.add({
          'time': element.dateTo.toString(),
          'pulse': (element.value as NumericHealthValue).numericValue,
        });
      }
      final response = await Network.post('$url/calculate_resting_pulse/',
          data: {'pulse_data': map});
      if (response.statusCode == 200) {
        return response.data;
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
    required int totalSleep,
    required int wakeTime,
    required int lightSleep,
    required int deepSleep,
    required int remSleep,
    required int oxygenLevel,
  }) async {
    try {
      final response =
          await Network.post('$url/calculate_sleep_metrics/', data: {
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
        throw Exception('Failed to calculate sleep metrics');
      }
    } catch (e) {
      rethrow;
    }
  }

  static Future<dynamic> calculateLifeMetrics({
    required int systolicPressure,
    required int diastolicPressure,
    required int restingHeartRate,
    required int maxHeartRate,
    required List<int> oxygenLevel,
  }) async {
    try {
      final data = {
        'systolic_pressure': systolicPressure,
        'diastolic_pressure': diastolicPressure,
        'resting_heart_rate': restingHeartRate,
        'max_heart_rate': maxHeartRate,
        'oxygen_levels': oxygenLevel,
      };
      final response =
          await Network.post('$url/calculate_life_metrics/', data: data);
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Failed to calculate life metrics');
      }
    } catch (e) {
      rethrow;
    }
  }
}
