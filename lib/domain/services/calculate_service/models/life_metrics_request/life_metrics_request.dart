// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'life_metrics_request.freezed.dart';
part 'life_metrics_request.g.dart';

@freezed
class LifeMetricsRequest with _$LifeMetricsRequest {
  const factory LifeMetricsRequest({
    required int systolic_pressure,
    required int diastolic_pressure,
    required int resting_heart_rate,
    required int max_heart_rate,
    required List<int> oxygen_levels,
  }) = _LifeMetricsRequest;
  factory LifeMetricsRequest.fromJson(Map<String, dynamic> json) =>
      _$LifeMetricsRequestFromJson(json);
}
