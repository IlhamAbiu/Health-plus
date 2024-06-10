// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sleep_response.freezed.dart';
part 'sleep_response.g.dart';

@freezed
class SleepResponse with _$SleepResponse {
  @JsonSerializable(explicitToJson: true)
  const factory SleepResponse({
    required String response,
  }) = _SleepResponse;

  factory SleepResponse.fromJson(Map<String, dynamic> json) =>
      _$SleepResponseFromJson(json);
}
