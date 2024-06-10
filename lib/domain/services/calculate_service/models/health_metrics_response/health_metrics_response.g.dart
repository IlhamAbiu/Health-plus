// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_metrics_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HealthMetricsResponseImpl _$$HealthMetricsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$HealthMetricsResponseImpl(
      BMI: json['BMI'] as num?,
      BMR: json['BMR'] as num?,
      TDEE: json['TDEE'] as num?,
      average_calories_burned_per_day:
          json['average_calories_burned_per_day'] as num?,
      maintenance_calories: json['maintenance_calories'] as num?,
      weight_loss_calories: json['weight_loss_calories'] as num?,
      weight_gain_calories: json['weight_gain_calories'] as num?,
      visceral_fat_index: json['visceral_fat_index'] as num?,
    );

Map<String, dynamic> _$$HealthMetricsResponseImplToJson(
        _$HealthMetricsResponseImpl instance) =>
    <String, dynamic>{
      'BMI': instance.BMI,
      'BMR': instance.BMR,
      'TDEE': instance.TDEE,
      'average_calories_burned_per_day':
          instance.average_calories_burned_per_day,
      'maintenance_calories': instance.maintenance_calories,
      'weight_loss_calories': instance.weight_loss_calories,
      'weight_gain_calories': instance.weight_gain_calories,
      'visceral_fat_index': instance.visceral_fat_index,
    };
