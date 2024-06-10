// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sleep_request.freezed.dart';
part 'sleep_request.g.dart';

@freezed
class SleepRequest with _$SleepRequest {
  @JsonSerializable(explicitToJson: true)
  const factory SleepRequest({
    required num sleep_quality_index,
    required num sleep_efficiency,
    required num sleep_latency,
    required num deep_sleep_percentage,
    required num rem_sleep_percentage,
    required num light_sleep_percentage,
    required num age,
    required String gender,
  }) = _SleepRequest;

  factory SleepRequest.fromJson(Map<String, dynamic> json) =>
      _$SleepRequestFromJson(json);
}
