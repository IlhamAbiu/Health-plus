// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resting_pulse_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RestingPulseRequestImpl _$$RestingPulseRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$RestingPulseRequestImpl(
      pulse_data: (json['pulse_data'] as List<dynamic>)
          .map((e) => PulseData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RestingPulseRequestImplToJson(
        _$RestingPulseRequestImpl instance) =>
    <String, dynamic>{
      'pulse_data': instance.pulse_data.map((e) => e.toJson()).toList(),
    };
