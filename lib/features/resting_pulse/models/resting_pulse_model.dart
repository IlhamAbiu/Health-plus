// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'resting_pulse_model.freezed.dart';
part 'resting_pulse_model.g.dart';

@freezed
class RestingPulseModel with _$RestingPulseModel {
  @JsonSerializable(explicitToJson: true)
  const factory RestingPulseModel({
    int? mean_pulse,
    int? median_pulse,
    int? resting_pulse,
  }) = _RestingPulseModel;

  factory RestingPulseModel.fromJson(Map<String, dynamic> json) =>
      _$RestingPulseModelFromJson(json);
}
