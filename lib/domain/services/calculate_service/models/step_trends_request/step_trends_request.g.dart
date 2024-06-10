// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step_trends_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StepTrendsRequestImpl _$$StepTrendsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$StepTrendsRequestImpl(
      step_data: (json['step_data'] as List<dynamic>)
          .map((e) => StepData.fromJson(e as Map<String, dynamic>))
          .toList(),
      weight_kg: json['weight_kg'] as num,
      height_cm: json['height_cm'] as num,
      age_years: json['age_years'] as num,
      gender: json['gender'] as String,
      activity_level: json['activity_level'] as String,
      target_calories: json['target_calories'] as num,
    );

Map<String, dynamic> _$$StepTrendsRequestImplToJson(
        _$StepTrendsRequestImpl instance) =>
    <String, dynamic>{
      'step_data': instance.step_data.map((e) => e.toJson()).toList(),
      'weight_kg': instance.weight_kg,
      'height_cm': instance.height_cm,
      'age_years': instance.age_years,
      'gender': instance.gender,
      'activity_level': instance.activity_level,
      'target_calories': instance.target_calories,
    };
