// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'resting_pulse_response.freezed.dart';
part 'resting_pulse_response.g.dart';

@freezed
class RestingPulseResponse with _$RestingPulseResponse {
  const factory RestingPulseResponse({
    int? mean_pulse,
    int? median_pulse,
    int? resting_pulse,
  }) = _RestingPulseResponse;

  factory RestingPulseResponse.fromJson(Map<String, dynamic> json) =>
      _$RestingPulseResponseFromJson(json);
}
