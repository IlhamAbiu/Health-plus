// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'life_indicators_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LifeIndicatorsRequestImpl _$$LifeIndicatorsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$LifeIndicatorsRequestImpl(
      resting_pulse: (json['resting_pulse'] as num).toInt(),
      average_pulse: (json['average_pulse'] as num).toInt(),
      median_pulse: (json['median_pulse'] as num).toInt(),
      map: (json['map'] as num).toInt(),
      pp: (json['pp'] as num).toInt(),
      age: (json['age'] as num).toInt(),
      gender: json['gender'] as String,
    );

Map<String, dynamic> _$$LifeIndicatorsRequestImplToJson(
        _$LifeIndicatorsRequestImpl instance) =>
    <String, dynamic>{
      'resting_pulse': instance.resting_pulse,
      'average_pulse': instance.average_pulse,
      'median_pulse': instance.median_pulse,
      'map': instance.map,
      'pp': instance.pp,
      'age': instance.age,
      'gender': instance.gender,
    };
