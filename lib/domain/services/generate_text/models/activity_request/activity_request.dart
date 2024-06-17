// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_request.freezed.dart';
part 'activity_request.g.dart';

@freezed
class ActivityRequest with _$ActivityRequest {
  @JsonSerializable(explicitToJson: true)
  const factory ActivityRequest({
    required String step_trends,
    required num target_calories,
    required int age,
    required String gender,
  }) = _ActivityRequest;

  factory ActivityRequest.fromJson(Map<String, dynamic> json) =>
      _$ActivityRequestFromJson(json);
}
