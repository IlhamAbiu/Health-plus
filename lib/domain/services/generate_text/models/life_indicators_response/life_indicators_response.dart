// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'life_indicators_response.freezed.dart';
part 'life_indicators_response.g.dart';

@freezed
class LifeIndicatorsResponse with _$LifeIndicatorsResponse {
  @JsonSerializable(explicitToJson: true)
  const factory LifeIndicatorsResponse({
    required String response,
  }) = _LifeIndicatorsResponse;

  factory LifeIndicatorsResponse.fromJson(Map<String, dynamic> json) =>
      _$LifeIndicatorsResponseFromJson(json);
}
