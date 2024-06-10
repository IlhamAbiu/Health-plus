// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pulse_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PulseDataImpl _$$PulseDataImplFromJson(Map<String, dynamic> json) =>
    _$PulseDataImpl(
      time: json['time'] as String,
      pulse: (json['pulse'] as num).toInt(),
    );

Map<String, dynamic> _$$PulseDataImplToJson(_$PulseDataImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'pulse': instance.pulse,
    };
