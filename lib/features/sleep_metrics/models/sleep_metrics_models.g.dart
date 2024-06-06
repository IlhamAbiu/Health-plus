// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sleep_metrics_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SleepMetricsModelsImpl _$$SleepMetricsModelsImplFromJson(
        Map<String, dynamic> json) =>
    _$SleepMetricsModelsImpl(
      sleep_score: (json['sleep_score'] as num).toDouble(),
      sleep_efficiency: (json['sleep_efficiency'] as num).toDouble(),
      sleep_latency: (json['sleep_latency'] as num).toInt(),
      deep_sleep_percent: (json['deep_sleep_percent'] as num).toInt(),
      rem_sleep_percent: (json['rem_sleep_percent'] as num).toInt(),
      light_sleep_percent: (json['light_sleep_percent'] as num).toInt(),
    );

Map<String, dynamic> _$$SleepMetricsModelsImplToJson(
        _$SleepMetricsModelsImpl instance) =>
    <String, dynamic>{
      'sleep_score': instance.sleep_score,
      'sleep_efficiency': instance.sleep_efficiency,
      'sleep_latency': instance.sleep_latency,
      'deep_sleep_percent': instance.deep_sleep_percent,
      'rem_sleep_percent': instance.rem_sleep_percent,
      'light_sleep_percent': instance.light_sleep_percent,
    };
