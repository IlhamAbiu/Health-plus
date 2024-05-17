// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      name: json['name'] as String,
      birthday: DateTime.parse(json['birthday'] as String),
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      height: (json['height'] as num).toInt(),
      weight: (json['weight'] as num).toDouble(),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'birthday': instance.birthday.toIso8601String(),
      'gender': _$GenderEnumMap[instance.gender]!,
      'height': instance.height,
      'weight': instance.weight,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
};
