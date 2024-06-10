// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'life_indicators_request.freezed.dart';
part 'life_indicators_request.g.dart';

@freezed
class LifeIndicatorsRequest with _$LifeIndicatorsRequest {
  @JsonSerializable(explicitToJson: true)
  const factory LifeIndicatorsRequest({
    required int resting_pulse,
    required int average_pulse,
    required int median_pulse,
    required int map,
    required int pp,
    required int age,
    required String gender,
  }) = _LifeIndicatorsRequest;

  factory LifeIndicatorsRequest.fromJson(Map<String, dynamic> json) =>
      _$LifeIndicatorsRequestFromJson(json);
}
