// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'step_data.freezed.dart';
part 'step_data.g.dart';

@freezed
class StepData with _$StepData {
  @JsonSerializable(explicitToJson: true)
  const factory StepData({
    required String date,
    required int steps,
  }) = _StepData;

  factory StepData.fromJson(Map<String, dynamic> json) =>
      _$StepDataFromJson(json);
}
