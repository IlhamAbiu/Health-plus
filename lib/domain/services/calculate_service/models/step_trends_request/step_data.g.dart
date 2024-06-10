// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StepDataImpl _$$StepDataImplFromJson(Map<String, dynamic> json) =>
    _$StepDataImpl(
      date: json['date'] as String,
      steps: (json['steps'] as num).toInt(),
    );

Map<String, dynamic> _$$StepDataImplToJson(_$StepDataImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'steps': instance.steps,
    };
