import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:health_plus/core/utils.dart';
import 'package:health_plus/domain/services/generate_text/generate_text.dart';
import 'package:health_plus/domain/services/generate_text/models/sleep_request/sleep_request.dart';
import 'package:health_plus/domain/services/generate_text/models/sleep_response/sleep_response.dart';
import 'package:health_plus/domain/user/user.dart';
import 'package:health_plus/domain/user/user_repository.dart';
import 'package:health_plus/features/sleep_metrics/models/sleep_metrics_models.dart';
import 'package:health_plus/features/sleep_metrics/sleep_metrics.dart';

class Sleep {
  Sleep._() {
    _read();
    SleepMetrics().stream.listen((value) async {
      _sleepMetricsModels = value;

      final json = await Utils().read(_key);
      if (json != null) {
        _sleepText = SleepResponse.fromJson(jsonDecode(json));
        _stream.add(_sleepText);
      }
      if (_sleepText == null) {
        updateData();
      }
    });
  }
  static Sleep? _instance;
  factory Sleep() => _instance ??= Sleep._();

  final _stream = StreamController<SleepResponse?>.broadcast();
  Stream<SleepResponse?> get stream => _stream.stream;
  SleepResponse? _sleepText;
  SleepResponse? get sleepText => _sleepText;

  static const String _key = 'sleep_text';

  SleepMetricsModels? _sleepMetricsModels;

  void _read() async {
    final json = await Utils().read(_key);
    if (json != null) {
      _sleepText = SleepResponse.fromJson(jsonDecode(json));
      _stream.add(_sleepText);
    }
  }

  Future<void> updateData() async {
    if (_sleepMetricsModels == null) {
      return;
    }
    _sleepText = null;
    _stream.add(_sleepText);
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
      Utils().write(_key, jsonEncode(_sleepText!.toJson()));
    } catch (e) {
      log('Error updating sleep', error: e);
      rethrow;
    }
  }

  String _gender() {
    return UserRepository().user!.gender == Gender.male ? 'male' : 'female';
  }
}
