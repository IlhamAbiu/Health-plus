// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sleep_metrics_models.freezed.dart';
part 'sleep_metrics_models.g.dart';

@freezed
class SleepMetricsModels with _$SleepMetricsModels {
  @JsonSerializable(explicitToJson: true)
  const factory SleepMetricsModels({
    required double sleep_score,
    required double sleep_efficiency,
    required int sleep_latency,
    required int deep_sleep_percent,
    required int rem_sleep_percent,
    required int light_sleep_percent,
  }) = _SleepMetricsModels;

  factory SleepMetricsModels.fromJson(Map<String, dynamic> json) =>
      _$SleepMetricsModelsFromJson(json);
}
