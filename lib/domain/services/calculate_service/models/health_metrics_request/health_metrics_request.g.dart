// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_metrics_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HealthMetricsRequestImpl _$$HealthMetricsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$HealthMetricsRequestImpl(
      weight: json['weight'] as num,
      body_fat_percentage: json['body_fat_percentage'] as num,
      height: json['height'] as num,
      basal_metabolism: json['basal_metabolism'] as num,
      activity_level: json['activity_level'] as num,
      avg_steps_per_week: json['avg_steps_per_week'] as num,
      avg_calories_burned_per_week: json['avg_calories_burned_per_week'] as num,
      age: json['age'] as num,
      gender: json['gender'] as String,
    );

Map<String, dynamic> _$$HealthMetricsRequestImplToJson(
        _$HealthMetricsRequestImpl instance) =>
    <String, dynamic>{
      'weight': instance.weight,
      'body_fat_percentage': instance.body_fat_percentage,
      'height': instance.height,
      'basal_metabolism': instance.basal_metabolism,
      'activity_level': instance.activity_level,
      'avg_steps_per_week': instance.avg_steps_per_week,
      'avg_calories_burned_per_week': instance.avg_calories_burned_per_week,
      'age': instance.age,
      'gender': instance.gender,
    };
