// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'life_indicators_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LifeIndicatorsRequest _$LifeIndicatorsRequestFromJson(
    Map<String, dynamic> json) {
  return _LifeIndicatorsRequest.fromJson(json);
}

/// @nodoc
mixin _$LifeIndicatorsRequest {
  int get resting_pulse => throw _privateConstructorUsedError;
  int get average_pulse => throw _privateConstructorUsedError;
  int get median_pulse => throw _privateConstructorUsedError;
  int get map => throw _privateConstructorUsedError;
  int get pp => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LifeIndicatorsRequestCopyWith<LifeIndicatorsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LifeIndicatorsRequestCopyWith<$Res> {
  factory $LifeIndicatorsRequestCopyWith(LifeIndicatorsRequest value,
          $Res Function(LifeIndicatorsRequest) then) =
      _$LifeIndicatorsRequestCopyWithImpl<$Res, LifeIndicatorsRequest>;
  @useResult
  $Res call(
      {int resting_pulse,
      int average_pulse,
      int median_pulse,
      int map,
      int pp,
      int age,
      String gender});
}

/// @nodoc
class _$LifeIndicatorsRequestCopyWithImpl<$Res,
        $Val extends LifeIndicatorsRequest>
    implements $LifeIndicatorsRequestCopyWith<$Res> {
  _$LifeIndicatorsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resting_pulse = null,
    Object? average_pulse = null,
    Object? median_pulse = null,
    Object? map = null,
    Object? pp = null,
    Object? age = null,
    Object? gender = null,
  }) {
    return _then(_value.copyWith(
      resting_pulse: null == resting_pulse
          ? _value.resting_pulse
          : resting_pulse // ignore: cast_nullable_to_non_nullable
              as int,
      average_pulse: null == average_pulse
          ? _value.average_pulse
          : average_pulse // ignore: cast_nullable_to_non_nullable
              as int,
      median_pulse: null == median_pulse
          ? _value.median_pulse
          : median_pulse // ignore: cast_nullable_to_non_nullable
              as int,
      map: null == map
          ? _value.map
          : map // ignore: cast_nullable_to_non_nullable
              as int,
      pp: null == pp
          ? _value.pp
          : pp // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$LifeIndicatorsRequestImplCopyWith<$Res>
    implements $LifeIndicatorsRequestCopyWith<$Res> {
  factory _$$LifeIndicatorsRequestImplCopyWith(
          _$LifeIndicatorsRequestImpl value,
          $Res Function(_$LifeIndicatorsRequestImpl) then) =
      __$$LifeIndicatorsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int resting_pulse,
      int average_pulse,
      int median_pulse,
      int map,
      int pp,
      int age,
      String gender});
}

/// @nodoc
class __$$LifeIndicatorsRequestImplCopyWithImpl<$Res>
    extends _$LifeIndicatorsRequestCopyWithImpl<$Res,
        _$LifeIndicatorsRequestImpl>
    implements _$$LifeIndicatorsRequestImplCopyWith<$Res> {
  __$$LifeIndicatorsRequestImplCopyWithImpl(_$LifeIndicatorsRequestImpl _value,
      $Res Function(_$LifeIndicatorsRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resting_pulse = null,
    Object? average_pulse = null,
    Object? median_pulse = null,
    Object? map = null,
    Object? pp = null,
    Object? age = null,
    Object? gender = null,
  }) {
    return _then(_$LifeIndicatorsRequestImpl(
      resting_pulse: null == resting_pulse
          ? _value.resting_pulse
          : resting_pulse // ignore: cast_nullable_to_non_nullable
              as int,
      average_pulse: null == average_pulse
          ? _value.average_pulse
          : average_pulse // ignore: cast_nullable_to_non_nullable
              as int,
      median_pulse: null == median_pulse
          ? _value.median_pulse
          : median_pulse // ignore: cast_nullable_to_non_nullable
              as int,
      map: null == map
          ? _value.map
          : map // ignore: cast_nullable_to_non_nullable
              as int,
      pp: null == pp
          ? _value.pp
          : pp // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$LifeIndicatorsRequestImpl implements _LifeIndicatorsRequest {
  const _$LifeIndicatorsRequestImpl(
      {required this.resting_pulse,
      required this.average_pulse,
      required this.median_pulse,
      required this.map,
      required this.pp,
      required this.age,
      required this.gender});

  factory _$LifeIndicatorsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$LifeIndicatorsRequestImplFromJson(json);

  @override
  final int resting_pulse;
  @override
  final int average_pulse;
  @override
  final int median_pulse;
  @override
  final int map;
  @override
  final int pp;
  @override
  final int age;
  @override
  final String gender;

  @override
  String toString() {
    return 'LifeIndicatorsRequest(resting_pulse: $resting_pulse, average_pulse: $average_pulse, median_pulse: $median_pulse, map: $map, pp: $pp, age: $age, gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LifeIndicatorsRequestImpl &&
            (identical(other.resting_pulse, resting_pulse) ||
                other.resting_pulse == resting_pulse) &&
            (identical(other.average_pulse, average_pulse) ||
                other.average_pulse == average_pulse) &&
            (identical(other.median_pulse, median_pulse) ||
                other.median_pulse == median_pulse) &&
            (identical(other.map, map) || other.map == map) &&
            (identical(other.pp, pp) || other.pp == pp) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, resting_pulse, average_pulse,
      median_pulse, map, pp, age, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LifeIndicatorsRequestImplCopyWith<_$LifeIndicatorsRequestImpl>
      get copyWith => __$$LifeIndicatorsRequestImplCopyWithImpl<
          _$LifeIndicatorsRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LifeIndicatorsRequestImplToJson(
      this,
    );
  }
}

abstract class _LifeIndicatorsRequest implements LifeIndicatorsRequest {
  const factory _LifeIndicatorsRequest(
      {required final int resting_pulse,
      required final int average_pulse,
      required final int median_pulse,
      required final int map,
      required final int pp,
      required final int age,
      required final String gender}) = _$LifeIndicatorsRequestImpl;

  factory _LifeIndicatorsRequest.fromJson(Map<String, dynamic> json) =
      _$LifeIndicatorsRequestImpl.fromJson;

  @override
  int get resting_pulse;
  @override
  int get average_pulse;
  @override
  int get median_pulse;
  @override
  int get map;
  @override
  int get pp;
  @override
  int get age;
  @override
  String get gender;
  @override
  @JsonKey(ignore: true)
  _$$LifeIndicatorsRequestImplCopyWith<_$LifeIndicatorsRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
