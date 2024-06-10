// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'pulse_data.dart';

part 'resting_pulse_request.freezed.dart';
part 'resting_pulse_request.g.dart';

@freezed
class RestingPulseRequest with _$RestingPulseRequest {
  @JsonSerializable(explicitToJson: true)
  const factory RestingPulseRequest({
    required List<PulseData> pulse_data,
  }) = _RestingPulseRequest;

  factory RestingPulseRequest.fromJson(Map<String, dynamic> json) =>
      _$RestingPulseRequestFromJson(json);
}
