// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'life_metrics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LifeMetricsModelImpl _$$LifeMetricsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LifeMetricsModelImpl(
      map: json['map'] as num?,
      pp: json['pp'] as num?,
      recovery_heart_rate: json['recovery_heart_rate'] as num?,
      average_resting_oxygen_level:
          json['average_resting_oxygen_level'] as num?,
      average_active_oxygen_level: json['average_active_oxygen_level'] as num?,
    );

Map<String, dynamic> _$$LifeMetricsModelImplToJson(
        _$LifeMetricsModelImpl instance) =>
    <String, dynamic>{
      'map': instance.map,
      'pp': instance.pp,
      'recovery_heart_rate': instance.recovery_heart_rate,
      'average_resting_oxygen_level': instance.average_resting_oxygen_level,
      'average_active_oxygen_level': instance.average_active_oxygen_level,
    };
