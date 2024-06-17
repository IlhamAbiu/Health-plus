// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivityRequestImpl _$$ActivityRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ActivityRequestImpl(
      step_trends: json['step_trends'] as String,
      target_calories: json['target_calories'] as num,
      age: (json['age'] as num).toInt(),
      gender: json['gender'] as String,
    );

Map<String, dynamic> _$$ActivityRequestImplToJson(
        _$ActivityRequestImpl instance) =>
    <String, dynamic>{
      'step_trends': instance.step_trends,
      'target_calories': instance.target_calories,
      'age': instance.age,
      'gender': instance.gender,
    };
