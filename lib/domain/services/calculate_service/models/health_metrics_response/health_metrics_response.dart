// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'health_metrics_response.freezed.dart';
part 'health_metrics_response.g.dart';

@freezed
class HealthMetricsResponse with _$HealthMetricsResponse {
  @JsonSerializable(explicitToJson: true)
  const factory HealthMetricsResponse({
    num? BMI,
    num? BMR,
    num? TDEE,
    num? average_calories_burned_per_day,
    num? maintenance_calories,
    num? weight_loss_calories,
    num? weight_gain_calories,
    num? visceral_fat_index,
  }) = _HealthMetricsResponse;

  factory HealthMetricsResponse.fromJson(Map<String, dynamic> json) =>
      _$HealthMetricsResponseFromJson(json);
}
