// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

enum Gender { male, female }

enum ActivityLevel { veryLow, low, medium, high, veryHigh }

@unfreezed
class User with _$User {
  @JsonSerializable(explicitToJson: true)
  factory User({
    required String name,
    required DateTime birthday,
    required Gender gender,
    required int height,
    required double weight,
    required ActivityLevel activityLevel,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
