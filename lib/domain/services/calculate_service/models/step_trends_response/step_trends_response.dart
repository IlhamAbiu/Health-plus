// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'step_trends_response.freezed.dart';
part 'step_trends_response.g.dart';

@freezed
class StepTrendsResponse with _$StepTrendsResponse {
  @JsonSerializable(explicitToJson: true)
  const factory StepTrendsResponse({
    required num mean_steps,
    required num steps_needed,
  }) = _StepTrendsResponse;

  factory StepTrendsResponse.fromJson(Map<String, dynamic> json) =>
      _$StepTrendsResponseFromJson(json);
}
