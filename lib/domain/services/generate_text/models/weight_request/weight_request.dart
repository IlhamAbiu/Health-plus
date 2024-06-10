// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'weight_request.freezed.dart';
part 'weight_request.g.dart';

@freezed
class WeightRequest with _$WeightRequest {
  @JsonSerializable(explicitToJson: true)
  const factory WeightRequest({
    required String step_trends,
    required num target_calories,
    required int age,
    required String gender,
  }) = _WeightRequest;

  factory WeightRequest.fromJson(Map<String, dynamic> json) =>
      _$WeightRequestFromJson(json);
}
