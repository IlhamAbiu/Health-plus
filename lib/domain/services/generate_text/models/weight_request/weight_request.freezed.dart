// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weight_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeightRequest _$WeightRequestFromJson(Map<String, dynamic> json) {
  return _WeightRequest.fromJson(json);
}

/// @nodoc
mixin _$WeightRequest {
  String get step_trends => throw _privateConstructorUsedError;
  num get target_calories => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeightRequestCopyWith<WeightRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeightRequestCopyWith<$Res> {
  factory $WeightRequestCopyWith(
          WeightRequest value, $Res Function(WeightRequest) then) =
      _$WeightRequestCopyWithImpl<$Res, WeightRequest>;
  @useResult
  $Res call({String step_trends, num target_calories, int age, String gender});
}

/// @nodoc
class _$WeightRequestCopyWithImpl<$Res, $Val extends WeightRequest>
    implements $WeightRequestCopyWith<$Res> {
  _$WeightRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? step_trends = null,
    Object? target_calories = null,
    Object? age = null,
    Object? gender = null,
  }) {
    return _then(_value.copyWith(
      step_trends: null == step_trends
          ? _value.step_trends
          : step_trends // ignore: cast_nullable_to_non_nullable
              as String,
      target_calories: null == target_calories
          ? _value.target_calories
          : target_calories // ignore: cast_nullable_to_non_nullable
              as num,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeightRequestImplCopyWith<$Res>
    implements $WeightRequestCopyWith<$Res> {
  factory _$$WeightRequestImplCopyWith(
          _$WeightRequestImpl value, $Res Function(_$WeightRequestImpl) then) =
      __$$WeightRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String step_trends, num target_calories, int age, String gender});
}

/// @nodoc
class __$$WeightRequestImplCopyWithImpl<$Res>
    extends _$WeightRequestCopyWithImpl<$Res, _$WeightRequestImpl>
    implements _$$WeightRequestImplCopyWith<$Res> {
  __$$WeightRequestImplCopyWithImpl(
      _$WeightRequestImpl _value, $Res Function(_$WeightRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? step_trends = null,
    Object? target_calories = null,
    Object? age = null,
    Object? gender = null,
  }) {
    return _then(_$WeightRequestImpl(
      step_trends: null == step_trends
          ? _value.step_trends
          : step_trends // ignore: cast_nullable_to_non_nullable
              as String,
      target_calories: null == target_calories
          ? _value.target_calories
          : target_calories // ignore: cast_nullable_to_non_nullable
              as num,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WeightRequestImpl implements _WeightRequest {
  const _$WeightRequestImpl(
      {required this.step_trends,
      required this.target_calories,
      required this.age,
      required this.gender});

  factory _$WeightRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeightRequestImplFromJson(json);

  @override
  final String step_trends;
  @override
  final num target_calories;
  @override
  final int age;
  @override
  final String gender;

  @override
  String toString() {
    return 'WeightRequest(step_trends: $step_trends, target_calories: $target_calories, age: $age, gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeightRequestImpl &&
            (identical(other.step_trends, step_trends) ||
                other.step_trends == step_trends) &&
            (identical(other.target_calories, target_calories) ||
                other.target_calories == target_calories) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, step_trends, target_calories, age, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeightRequestImplCopyWith<_$WeightRequestImpl> get copyWith =>
      __$$WeightRequestImplCopyWithImpl<_$WeightRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeightRequestImplToJson(
      this,
    );
  }
}

abstract class _WeightRequest implements WeightRequest {
  const factory _WeightRequest(
      {required final String step_trends,
      required final num target_calories,
      required final int age,
      required final String gender}) = _$WeightRequestImpl;

  factory _WeightRequest.fromJson(Map<String, dynamic> json) =
      _$WeightRequestImpl.fromJson;

  @override
  String get step_trends;
  @override
  num get target_calories;
  @override
  int get age;
  @override
  String get gender;
  @override
  @JsonKey(ignore: true)
  _$$WeightRequestImplCopyWith<_$WeightRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
