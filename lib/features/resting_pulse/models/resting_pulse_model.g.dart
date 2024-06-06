// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resting_pulse_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RestingPulseModelImpl _$$RestingPulseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RestingPulseModelImpl(
      mean_pulse: (json['mean_pulse'] as num?)?.toInt(),
      median_pulse: (json['median_pulse'] as num?)?.toInt(),
      resting_pulse: (json['resting_pulse'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RestingPulseModelImplToJson(
        _$RestingPulseModelImpl instance) =>
    <String, dynamic>{
      'mean_pulse': instance.mean_pulse,
      'median_pulse': instance.median_pulse,
      'resting_pulse': instance.resting_pulse,
    };
