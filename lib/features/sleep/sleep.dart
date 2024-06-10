import 'dart:async';
import 'dart:developer';

import 'package:health_plus/domain/services/generate_text/generate_text.dart';
import 'package:health_plus/domain/services/generate_text/models/sleep_request/sleep_request.dart';
import 'package:health_plus/domain/services/generate_text/models/sleep_response/sleep_response.dart';
import 'package:health_plus/domain/user/user.dart';
import 'package:health_plus/domain/user/user_repository.dart';
import 'package:health_plus/features/sleep_metrics/models/sleep_metrics_models.dart';
import 'package:health_plus/features/sleep_metrics/sleep_metrics.dart';

class Sleep {
  Sleep._() {
    SleepMetrics().stream.listen((value) {
      _sleepMetricsModels = value;
      _updateData();
    });
  }
  static Sleep? _instance;
  factory Sleep() => _instance ??= Sleep._();

  final _stream = StreamController<SleepResponse?>.broadcast();
  Stream<SleepResponse?> get stream => _stream.stream;
  SleepResponse? _sleepText;
  SleepResponse? get sleepText => _sleepText;

  SleepMetricsModels? _sleepMetricsModels;

  Future<void> _updateData() async {
    if (_sleepMetricsModels == null) {
      return;
    }
    try {
      final sleepQualityIndex = _sleepMetricsModels!.sleep_score;
      final sleepEfficiency = _sleepMetricsModels!.sleep_efficiency;
      final sleepLatency = _sleepMetricsModels!.sleep_latency;
      final deepSleep = _sleepMetricsModels!.deep_sleep_percent;
      final remSleep = _sleepMetricsModels!.rem_sleep_percent;
      final lightSleep = _sleepMetricsModels!.light_sleep_percent;
      final age = DateTime.now().year - UserRepository().user!.birthday.year;
      final gender = _gender();
      final request = SleepRequest(
        sleep_quality_index: sleepQualityIndex,
        sleep_efficiency: sleepEfficiency,
        sleep_latency: sleepLatency,
        deep_sleep_percentage: deepSleep,
        rem_sleep_percentage: remSleep,
        light_sleep_percentage: lightSleep,
        age: age,
        gender: gender,
      );

      _sleepText = await GenerateText.sleep(request);
      _stream.add(_sleepText);
    } catch (e) {
      log('Error updating sleep', error: e);
      rethrow;
    }
  }

  String _gender() {
    return UserRepository().user!.gender == Gender.male ? 'male' : 'female';
  }
}
