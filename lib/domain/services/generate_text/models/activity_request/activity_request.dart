// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_request.freezed.dart';
part 'activity_request.g.dart';

@freezed
class ActivityRequest with _$ActivityRequest {
  @JsonSerializable(explicitToJson: true)
  const factory ActivityRequest({
    required int height,
    required int weight,
    required int body_fat_percentage,
    required int bmi,
    required int basal_metabolism,
    required int tdee,
    required int avg_calories_burned_walking,
    required int avg_calories_burned_exercise,
    required int maintenance_calories,
    required int weight_loss_calories,
    required int weight_gain_calories,
    required int visceral_fat_index,
    required int age,
    required String gender,
  }) = _ActivityRequest;

  factory ActivityRequest.fromJson(Map<String, dynamic> json) =>
      _$ActivityRequestFromJson(json);
}
