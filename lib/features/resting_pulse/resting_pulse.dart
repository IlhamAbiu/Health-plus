import 'dart:async';
import 'dart:developer';

import 'package:health/health.dart';
import 'package:health_plus/domain/services/calculate_service/calculate_service.dart';
import 'package:health_plus/domain/services/health_service/health_service.dart';

import 'models/resting_pulse_model.dart';

class RestingPulse {
  RestingPulse._();
  static RestingPulse? _instatance;
  factory RestingPulse() => _instatance ??= RestingPulse._();

  final _stream = StreamController<RestingPulseModel?>.broadcast();
  Stream<RestingPulseModel?> get stream => _stream.stream;
  RestingPulseModel? _lastRestingPulse;
  RestingPulseModel? get lastRestingPulse => _lastRestingPulse;

  Future<void> updateData() async {
    final data = await HealthService()
        .fetchDataAfterToDay(types: [HealthDataType.HEART_RATE]);
    if (data.isNotEmpty) {
      try {
        final result = await CalculateService.calculateRestingPulse(data);
        _lastRestingPulse = RestingPulseModel.fromJson(result);
        _stream.add(_lastRestingPulse);
      } catch (e) {
        log('Error calculating resting pulse', error: e);
        rethrow;
      }
    } else {
      _stream.add(null);
    }
  }
}
