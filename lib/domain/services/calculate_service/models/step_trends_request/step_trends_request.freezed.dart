// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'step_trends_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StepTrendsRequest _$StepTrendsRequestFromJson(Map<String, dynamic> json) {
  return _StepTrendsRequest.fromJson(json);
}

/// @nodoc
mixin _$StepTrendsRequest {
  List<StepData> get step_data => throw _privateConstructorUsedError;
  num get weight_kg => throw _privateConstructorUsedError;
  num get height_cm => throw _privateConstructorUsedError;
  num get age_years => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get activity_level => throw _privateConstructorUsedError;
  num get target_calories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StepTrendsRequestCopyWith<StepTrendsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepTrendsRequestCopyWith<$Res> {
  factory $StepTrendsRequestCopyWith(
          StepTrendsRequest value, $Res Function(StepTrendsRequest) then) =
      _$StepTrendsRequestCopyWithImpl<$Res, StepTrendsRequest>;
  @useResult
  $Res call(
      {List<StepData> step_data,
      num weight_kg,
      num height_cm,
      num age_years,
      String gender,
      String activity_level,
      num target_calories});
}

/// @nodoc
class _$StepTrendsRequestCopyWithImpl<$Res, $Val extends StepTrendsRequest>
    implements $StepTrendsRequestCopyWith<$Res> {
  _$StepTrendsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? step_data = null,
    Object? weight_kg = null,
    Object? height_cm = null,
    Object? age_years = null,
    Object? gender = null,
    Object? activity_level = null,
    Object? target_calories = null,
  }) {
    return _then(_value.copyWith(
      step_data: null == step_data
          ? _value.step_data
          : step_data // ignore: cast_nullable_to_non_nullable
              as List<StepData>,
      weight_kg: null == weight_kg
          ? _value.weight_kg
          : weight_kg // ignore: cast_nullable_to_non_nullable
              as num,
      height_cm: null == height_cm
          ? _value.height_cm
          : height_cm // ignore: cast_nullable_to_non_nullable
              as num,
      age_years: null == age_years
          ? _value.age_years
          : age_years // ignore: cast_nullable_to_non_nullable
              as num,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      activity_level: null == activity_level
          ? _value.activity_level
          : activity_level // ignore: cast_nullable_to_non_nullable
              as String,
      target_calories: null == target_calories
          ? _value.target_calories
          : target_calories // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StepTrendsRequestImplCopyWith<$Res>
    implements $StepTrendsRequestCopyWith<$Res> {
  factory _$$StepTrendsRequestImplCopyWith(_$StepTrendsRequestImpl value,
          $Res Function(_$StepTrendsRequestImpl) then) =
      __$$StepTrendsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<StepData> step_data,
      num weight_kg,
      num height_cm,
      num age_years,
      String gender,
      String activity_level,
      num target_calories});
}

/// @nodoc
class __$$StepTrendsRequestImplCopyWithImpl<$Res>
    extends _$StepTrendsRequestCopyWithImpl<$Res, _$StepTrendsRequestImpl>
    implements _$$StepTrendsRequestImplCopyWith<$Res> {
  __$$StepTrendsRequestImplCopyWithImpl(_$StepTrendsRequestImpl _value,
      $Res Function(_$StepTrendsRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? step_data = null,
    Object? weight_kg = null,
    Object? height_cm = null,
    Object? age_years = null,
    Object? gender = null,
    Object? activity_level = null,
    Object? target_calories = null,
  }) {
    return _then(_$StepTrendsRequestImpl(
      step_data: null == step_data
          ? _value._step_data
          : step_data // ignore: cast_nullable_to_non_nullable
              as List<StepData>,
      weight_kg: null == weight_kg
          ? _value.weight_kg
          : weight_kg // ignore: cast_nullable_to_non_nullable
              as num,
      height_cm: null == height_cm
          ? _value.height_cm
          : height_cm // ignore: cast_nullable_to_non_nullable
              as num,
      age_years: null == age_years
          ? _value.age_years
          : age_years // ignore: cast_nullable_to_non_nullable
              as num,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      activity_level: null == activity_level
          ? _value.activity_level
          : activity_level // ignore: cast_nullable_to_non_nullable
              as String,
      target_calories: null == target_calories
          ? _value.target_calories
          : target_calories // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$StepTrendsRequestImpl implements _StepTrendsRequest {
  const _$StepTrendsRequestImpl(
      {required final List<StepData> step_data,
      required this.weight_kg,
      required this.height_cm,
      required this.age_years,
      required this.gender,
      required this.activity_level,
      required this.target_calories})
      : _step_data = step_data;

  factory _$StepTrendsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$StepTrendsRequestImplFromJson(json);

  final List<StepData> _step_data;
  @override
  List<StepData> get step_data {
    if (_step_data is EqualUnmodifiableListView) return _step_data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_step_data);
  }

  @override
  final num weight_kg;
  @override
  final num height_cm;
  @override
  final num age_years;
  @override
  final String gender;
  @override
  final String activity_level;
  @override
  final num target_calories;

  @override
  String toString() {
    return 'StepTrendsRequest(step_data: $step_data, weight_kg: $weight_kg, height_cm: $height_cm, age_years: $age_years, gender: $gender, activity_level: $activity_level, target_calories: $target_calories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StepTrendsRequestImpl &&
            const DeepCollectionEquality()
                .equals(other._step_data, _step_data) &&
            (identical(other.weight_kg, weight_kg) ||
                other.weight_kg == weight_kg) &&
            (identical(other.height_cm, height_cm) ||
                other.height_cm == height_cm) &&
            (identical(other.age_years, age_years) ||
                other.age_years == age_years) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.activity_level, activity_level) ||
                other.activity_level == activity_level) &&
            (identical(other.target_calories, target_calories) ||
                other.target_calories == target_calories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_step_data),
      weight_kg,
      height_cm,
      age_years,
      gender,
      activity_level,
      target_calories);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StepTrendsRequestImplCopyWith<_$StepTrendsRequestImpl> get copyWith =>
      __$$StepTrendsRequestImplCopyWithImpl<_$StepTrendsRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StepTrendsRequestImplToJson(
      this,
    );
  }
}

abstract class _StepTrendsRequest implements StepTrendsRequest {
  const factory _StepTrendsRequest(
      {required final List<StepData> step_data,
      required final num weight_kg,
      required final num height_cm,
      required final num age_years,
      required final String gender,
      required final String activity_level,
      required final num target_calories}) = _$StepTrendsRequestImpl;

  factory _StepTrendsRequest.fromJson(Map<String, dynamic> json) =
      _$StepTrendsRequestImpl.fromJson;

  @override
  List<StepData> get step_data;
  @override
  num get weight_kg;
  @override
  num get height_cm;
  @override
  num get age_years;
  @override
  String get gender;
  @override
  String get activity_level;
  @override
  num get target_calories;
  @override
  @JsonKey(ignore: true)
  _$$StepTrendsRequestImplCopyWith<_$StepTrendsRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
