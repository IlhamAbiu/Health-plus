// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'life_metrics_model.freezed.dart';
part 'life_metrics_model.g.dart';

@freezed
class LifeMetricsModel with _$LifeMetricsModel {
  @JsonSerializable(explicitToJson: true)
  const factory LifeMetricsModel({
    num? map,
    num? pp,
    num? recovery_heart_rate,
    num? average_resting_oxygen_level,
    num? average_active_oxygen_level,
  }) = _LifeMetricsModel;

  factory LifeMetricsModel.fromJson(Map<String, dynamic> json) =>
      _$LifeMetricsModelFromJson(json);
}
