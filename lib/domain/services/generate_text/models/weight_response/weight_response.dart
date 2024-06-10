// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'weight_response.freezed.dart';
part 'weight_response.g.dart';

@freezed
class WeightResponse with _$WeightResponse {
  @JsonSerializable(explicitToJson: true)
  const factory WeightResponse({
    required String response,
  }) = _WeightResponse;

  factory WeightResponse.fromJson(Map<String, dynamic> json) =>
      _$WeightResponseFromJson(json);
}
