import 'package:freezed_annotation/freezed_annotation.dart';

part 'life_metrics_response.freezed.dart';
part 'life_metrics_response.g.dart';

@freezed
class LifeMetricsResponse with _$LifeMetricsResponse {
  const factory LifeMetricsResponse({
    num? map,
    num? pp,
    num? recovery_heart_rate,
    num? average_resting_oxygen_level,
    num? average_active_oxygen_level,
  }) = _LifeMetricsResponse;

  factory LifeMetricsResponse.fromJson(Map<String, dynamic> json) =>
      _$LifeMetricsResponseFromJson(json);
}
