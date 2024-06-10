import 'dart:async';
import 'dart:developer';

import 'package:health_plus/domain/services/calculate_service/models/life_metrics_response/life_metrics_response.dart';
import 'package:health_plus/domain/services/calculate_service/models/resting_pulse_response/resting_pulse_response.dart';
import 'package:health_plus/domain/services/generate_text/generate_text.dart';
import 'package:health_plus/domain/services/generate_text/models/life_indicators_request/life_indicators_request.dart';
import 'package:health_plus/domain/services/generate_text/models/life_indicators_response/life_indicators_response.dart';
import 'package:health_plus/domain/user/user.dart';
import 'package:health_plus/domain/user/user_repository.dart';
import 'package:health_plus/features/life_metrics/life_metrics.dart';
import 'package:health_plus/features/resting_pulse/resting_pulse.dart';

class LifeIndicators {
  LifeIndicators._() {
    RestingPulse().stream.listen((value) {
      _restingPulse = value;
      _updateData();
    });
    LifeMetrics().stream.listen((value) {
      _lifeMetricsResponse = value;
      _updateData();
    });
  }
  static LifeIndicators? _instance;
  factory LifeIndicators() => _instance ??= LifeIndicators._();

  final _stream = StreamController<LifeIndicatorsResponse?>.broadcast();
  Stream<LifeIndicatorsResponse?> get stream => _stream.stream;
  LifeIndicatorsResponse? _lifeIndicatorsText;
  LifeIndicatorsResponse? get lifeIndicatorsText => _lifeIndicatorsText;

  RestingPulseResponse? _restingPulse;
  LifeMetricsResponse? _lifeMetricsResponse;

  Future<void> _updateData() async {
    if (_restingPulse == null || _lifeMetricsResponse == null) {
      return;
    }

    try {
      final restingPulse = _restingPulse!.resting_pulse!;
      final averagePulse = _restingPulse!.mean_pulse!;
      final medianPulse = _restingPulse!.median_pulse!;
      final map = _lifeMetricsResponse!.map!;
      final pp = _lifeMetricsResponse!.pp!;
      final age = DateTime.now().year - UserRepository().user!.birthday.year;
      final gender = _gender();
      final request = LifeIndicatorsRequest(
        resting_pulse: restingPulse,
        average_pulse: averagePulse,
        median_pulse: medianPulse,
        map: map.toInt(),
        pp: pp.toInt(),
        age: age,
        gender: gender,
      );

      _lifeIndicatorsText = await GenerateText.lifeIndicators(request);
      _stream.add(_lifeIndicatorsText);
    } catch (e) {
      log('Error updating life indicators', error: e);
      rethrow;
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
}
