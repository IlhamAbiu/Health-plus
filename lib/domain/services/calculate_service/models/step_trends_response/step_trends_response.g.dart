// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step_trends_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StepTrendsResponseImpl _$$StepTrendsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$StepTrendsResponseImpl(
      mean_steps: json['mean_steps'] as num,
      steps_needed: json['steps_needed'] as num,
    );

Map<String, dynamic> _$$StepTrendsResponseImplToJson(
        _$StepTrendsResponseImpl instance) =>
    <String, dynamic>{
      'mean_steps': instance.mean_steps,
      'steps_needed': instance.steps_needed,
    };
