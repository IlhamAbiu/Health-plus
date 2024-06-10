// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'health_metrics_request.freezed.dart';
part 'health_metrics_request.g.dart';

@freezed
class HealthMetricsRequest with _$HealthMetricsRequest {
  @JsonSerializable()
  const factory HealthMetricsRequest({
    required num weight,
    required num body_fat_percentage,
    required num height,
    required num basal_metabolism,
    required num activity_level,
    required num avg_steps_per_week,
    required num avg_calories_burned_per_week,
    required num age,
    required String gender,
  }) = _HealthMetricsRequest;

  factory HealthMetricsRequest.fromJson(Map<String, dynamic> json) =>
      _$HealthMetricsRequestFromJson(json);
}
