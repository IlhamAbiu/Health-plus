import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_response.freezed.dart';
part 'activity_response.g.dart';

@freezed
class ActivityResponse with _$ActivityResponse {
  const factory ActivityResponse({
    String? response,
  }) = _ActivityResponse;

  factory ActivityResponse.fromJson(Map<String, dynamic> json) =>
      _$ActivityResponseFromJson(json);
}
