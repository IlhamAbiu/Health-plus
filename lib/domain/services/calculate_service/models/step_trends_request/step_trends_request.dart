// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'step_data.dart';

part 'step_trends_request.freezed.dart';
part 'step_trends_request.g.dart';

@freezed
class StepTrendsRequest with _$StepTrendsRequest {
  @JsonSerializable(explicitToJson: true)
  const factory StepTrendsRequest({
    required List<StepData> step_data,
    required num weight_kg,
    required num height_cm,
    required num age_years,
    required String gender,
    required String activity_level,
    required num target_calories,
  }) = _StepTrendsRequest;

  factory StepTrendsRequest.fromJson(Map<String, dynamic> json) =>
      _$StepTrendsRequestFromJson(json);
}
