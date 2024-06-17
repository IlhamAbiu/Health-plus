// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weight_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeightRequestImpl _$$WeightRequestImplFromJson(Map<String, dynamic> json) =>
    _$WeightRequestImpl(
      height: (json['height'] as num).toInt(),
      weight: (json['weight'] as num).toInt(),
      body_fat_percentage: (json['body_fat_percentage'] as num).toInt(),
      bmi: (json['bmi'] as num).toInt(),
      basal_metabolism: (json['basal_metabolism'] as num).toInt(),
      tdee: (json['tdee'] as num).toInt(),
      avg_calories_burned_walking:
          (json['avg_calories_burned_walking'] as num).toInt(),
      avg_calories_burned_exercise:
          (json['avg_calories_burned_exercise'] as num).toInt(),
      maintenance_calories: (json['maintenance_calories'] as num).toInt(),
      weight_loss_calories: (json['weight_loss_calories'] as num).toInt(),
      weight_gain_calories: (json['weight_gain_calories'] as num).toInt(),
      visceral_fat_index: (json['visceral_fat_index'] as num).toInt(),
      age: (json['age'] as num).toInt(),
      gender: json['gender'] as String,
    );

Map<String, dynamic> _$$WeightRequestImplToJson(_$WeightRequestImpl instance) =>
    <String, dynamic>{
      'height': instance.height,
      'weight': instance.weight,
      'body_fat_percentage': instance.body_fat_percentage,
      'bmi': instance.bmi,
      'basal_metabolism': instance.basal_metabolism,
      'tdee': instance.tdee,
      'avg_calories_burned_walking': instance.avg_calories_burned_walking,
      'avg_calories_burned_exercise': instance.avg_calories_burned_exercise,
      'maintenance_calories': instance.maintenance_calories,
      'weight_loss_calories': instance.weight_loss_calories,
      'weight_gain_calories': instance.weight_gain_calories,
      'visceral_fat_index': instance.visceral_fat_index,
      'age': instance.age,
      'gender': instance.gender,
    };
