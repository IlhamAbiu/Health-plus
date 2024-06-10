// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sleep_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SleepRequestImpl _$$SleepRequestImplFromJson(Map<String, dynamic> json) =>
    _$SleepRequestImpl(
      sleep_quality_index: json['sleep_quality_index'] as num,
      sleep_efficiency: json['sleep_efficiency'] as num,
      sleep_latency: json['sleep_latency'] as num,
      deep_sleep_percentage: json['deep_sleep_percentage'] as num,
      rem_sleep_percentage: json['rem_sleep_percentage'] as num,
      light_sleep_percentage: json['light_sleep_percentage'] as num,
      age: json['age'] as num,
      gender: json['gender'] as String,
    );

Map<String, dynamic> _$$SleepRequestImplToJson(_$SleepRequestImpl instance) =>
    <String, dynamic>{
      'sleep_quality_index': instance.sleep_quality_index,
      'sleep_efficiency': instance.sleep_efficiency,
      'sleep_latency': instance.sleep_latency,
      'deep_sleep_percentage': instance.deep_sleep_percentage,
      'rem_sleep_percentage': instance.rem_sleep_percentage,
      'light_sleep_percentage': instance.light_sleep_percentage,
      'age': instance.age,
      'gender': instance.gender,
    };
