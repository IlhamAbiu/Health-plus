// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resting_pulse_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RestingPulseResponseImpl _$$RestingPulseResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RestingPulseResponseImpl(
      mean_pulse: (json['mean_pulse'] as num?)?.toInt(),
      median_pulse: (json['median_pulse'] as num?)?.toInt(),
      resting_pulse: (json['resting_pulse'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RestingPulseResponseImplToJson(
        _$RestingPulseResponseImpl instance) =>
    <String, dynamic>{
      'mean_pulse': instance.mean_pulse,
      'median_pulse': instance.median_pulse,
      'resting_pulse': instance.resting_pulse,
    };
