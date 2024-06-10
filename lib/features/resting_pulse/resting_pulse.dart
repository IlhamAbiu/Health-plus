import 'dart:async';
import 'dart:developer';

import 'package:health/health.dart';
import 'package:health_plus/domain/services/calculate_service/calculate_service.dart';
import 'package:health_plus/domain/services/calculate_service/models/resting_pulse_request/pulse_data.dart';
import 'package:health_plus/domain/services/calculate_service/models/resting_pulse_request/resting_pulse_request.dart';
import 'package:health_plus/domain/services/calculate_service/models/resting_pulse_response/resting_pulse_response.dart';
import 'package:health_plus/domain/services/health_service/health_service.dart';

class RestingPulse {
  RestingPulse._();
  static RestingPulse? _instatance;
  factory RestingPulse() => _instatance ??= RestingPulse._();

  final _stream = StreamController<RestingPulseResponse?>.broadcast();
  Stream<RestingPulseResponse?> get stream => _stream.stream;
  RestingPulseResponse? _lastRestingPulse;
  RestingPulseResponse? get lastRestingPulse => _lastRestingPulse;

  Future<void> updateData() async {
    final data = await HealthService()
        .fetchDataAfterToDay(types: [HealthDataType.HEART_RATE]);

    final List<PulseData> dataList = [];

    for (var element in data) {
      if (element.value is NumericHealthValue) {
        dataList.add(
          PulseData(
            time: element.dateFrom.toString(),
            pulse: (element.value as NumericHealthValue).numericValue.toInt(),
          ),
        );
      }
    }

    final request = RestingPulseRequest(
      pulse_data: dataList,
    );

    if (data.isNotEmpty) {
      try {
        _lastRestingPulse =
            await CalculateService.calculateRestingPulse(request);
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
