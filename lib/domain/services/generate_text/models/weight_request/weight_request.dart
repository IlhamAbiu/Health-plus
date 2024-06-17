// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'weight_request.freezed.dart';
part 'weight_request.g.dart';

@freezed
class WeightRequest with _$WeightRequest {
  @JsonSerializable(explicitToJson: true)
  const factory WeightRequest({
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
  }) = _WeightRequest;

  factory WeightRequest.fromJson(Map<String, dynamic> json) =>
      _$WeightRequestFromJson(json);
}
