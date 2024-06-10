// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pulse_data.freezed.dart';
part 'pulse_data.g.dart';

@freezed
class PulseData with _$PulseData {
  @JsonSerializable(explicitToJson: true)
  const factory PulseData({
    required String time,
    required int pulse,
  }) = _PulseData;

  factory PulseData.fromJson(Map<String, dynamic> json) =>
      _$PulseDataFromJson(json);
}
