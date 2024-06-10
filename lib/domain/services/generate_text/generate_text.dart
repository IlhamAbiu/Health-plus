import 'package:health_plus/core/network.dart';

import 'models/activity_request/activity_request.dart';
import 'models/activity_response/activity_response.dart';
import 'models/life_indicators_request/life_indicators_request.dart';
import 'models/life_indicators_response/life_indicators_response.dart';
import 'models/sleep_request/sleep_request.dart';
import 'models/sleep_response/sleep_response.dart';
import 'models/weight_request/weight_request.dart';
import 'models/weight_response/weight_response.dart';

class GenerateText {
  GenerateText._();

  static const _url = 'http://168.119.250.139:8000';

  static Future<ActivityResponse> activity(ActivityRequest activity) async {
    try {
      final response = await Network.post(
        '$_url/generate_text/',
        data: {
          'prompt_number': 1,
          'user_data': activity.toJson(),
        },
      );

      if (response.statusCode == 200) {
        return ActivityResponse.fromJson(response.data);
      } else {
        throw Exception('Failed to generate text');
      }
    } catch (e) {
      rethrow;
    }
  }

  static Future<LifeIndicatorsResponse> lifeIndicators(
      LifeIndicatorsRequest lifeIndicators) async {
    try {
      final response = await Network.post(
        '$_url/generate_text/',
        data: {
          'prompt_number': 2,
          'user_data': lifeIndicators.toJson(),
        },
      );

      if (response.statusCode == 200) {
        return LifeIndicatorsResponse.fromJson(response.data);
      } else {
        throw Exception('Failed to generate text');
      }
    } catch (e) {
      rethrow;
    }
  }

  static Future<WeightResponse> weight(WeightRequest weight) async {
    try {
      final response = await Network.post(
        '$_url/generate_text/',
        data: {
          'prompt_number': 3,
          'user_data': weight.toJson(),
        },
      );
      if (response.statusCode == 200) {
        return WeightResponse.fromJson(response.data);
      } else {
        throw Exception('Failed to generate text');
      }
    } catch (e) {
      rethrow;
    }
  }

  static Future<SleepResponse> sleep(SleepRequest sleep) async {
    try {
      final response = await Network.post(
        '$_url/generate_text/',
        data: {
          'prompt_number': 4,
          'user_data': sleep.toJson(),
        },
      );
      if (response.statusCode == 200) {
        return SleepResponse.fromJson(response.data);
      } else {
        throw Exception('Failed to generate text');
      }
    } catch (e) {
      rethrow;
    }
  }
}
