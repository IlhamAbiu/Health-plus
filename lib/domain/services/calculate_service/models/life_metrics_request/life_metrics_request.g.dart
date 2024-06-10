// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'life_metrics_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LifeMetricsRequestImpl _$$LifeMetricsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$LifeMetricsRequestImpl(
      systolic_pressure: (json['systolic_pressure'] as num).toInt(),
      diastolic_pressure: (json['diastolic_pressure'] as num).toInt(),
      resting_heart_rate: (json['resting_heart_rate'] as num).toInt(),
      max_heart_rate: (json['max_heart_rate'] as num).toInt(),
      oxygen_levels: (json['oxygen_levels'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$LifeMetricsRequestImplToJson(
        _$LifeMetricsRequestImpl instance) =>
    <String, dynamic>{
      'systolic_pressure': instance.systolic_pressure,
      'diastolic_pressure': instance.diastolic_pressure,
      'resting_heart_rate': instance.resting_heart_rate,
      'max_heart_rate': instance.max_heart_rate,
      'oxygen_levels': instance.oxygen_levels,
    };
