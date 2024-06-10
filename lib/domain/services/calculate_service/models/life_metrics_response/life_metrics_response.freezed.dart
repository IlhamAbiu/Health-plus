// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'life_metrics_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LifeMetricsResponse _$LifeMetricsResponseFromJson(Map<String, dynamic> json) {
  return _LifeMetricsResponse.fromJson(json);
}

/// @nodoc
mixin _$LifeMetricsResponse {
  num? get map => throw _privateConstructorUsedError;
  num? get pp => throw _privateConstructorUsedError;
  num? get recovery_heart_rate => throw _privateConstructorUsedError;
  num? get average_resting_oxygen_level => throw _privateConstructorUsedError;
  num? get average_active_oxygen_level => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LifeMetricsResponseCopyWith<LifeMetricsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LifeMetricsResponseCopyWith<$Res> {
  factory $LifeMetricsResponseCopyWith(
          LifeMetricsResponse value, $Res Function(LifeMetricsResponse) then) =
      _$LifeMetricsResponseCopyWithImpl<$Res, LifeMetricsResponse>;
  @useResult
  $Res call(
      {num? map,
      num? pp,
      num? recovery_heart_rate,
      num? average_resting_oxygen_level,
      num? average_active_oxygen_level});
}

/// @nodoc
class _$LifeMetricsResponseCopyWithImpl<$Res, $Val extends LifeMetricsResponse>
    implements $LifeMetricsResponseCopyWith<$Res> {
  _$LifeMetricsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? map = freezed,
    Object? pp = freezed,
    Object? recovery_heart_rate = freezed,
    Object? average_resting_oxygen_level = freezed,
    Object? average_active_oxygen_level = freezed,
  }) {
    return _then(_value.copyWith(
      map: freezed == map
          ? _value.map
          : map // ignore: cast_nullable_to_non_nullable
              as num?,
      pp: freezed == pp
          ? _value.pp
          : pp // ignore: cast_nullable_to_non_nullable
              as num?,
      recovery_heart_rate: freezed == recovery_heart_rate
          ? _value.recovery_heart_rate
          : recovery_heart_rate // ignore: cast_nullable_to_non_nullable
              as num?,
      average_resting_oxygen_level: freezed == average_resting_oxygen_level
          ? _value.average_resting_oxygen_level
          : average_resting_oxygen_level // ignore: cast_nullable_to_non_nullable
              as num?,
      average_active_oxygen_level: freezed == average_active_oxygen_level
          ? _value.average_active_oxygen_level
          : average_active_oxygen_level // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LifeMetricsResponseImplCopyWith<$Res>
    implements $LifeMetricsResponseCopyWith<$Res> {
  factory _$$LifeMetricsResponseImplCopyWith(_$LifeMetricsResponseImpl value,
          $Res Function(_$LifeMetricsResponseImpl) then) =
      __$$LifeMetricsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num? map,
      num? pp,
      num? recovery_heart_rate,
      num? average_resting_oxygen_level,
      num? average_active_oxygen_level});
}

/// @nodoc
class __$$LifeMetricsResponseImplCopyWithImpl<$Res>
    extends _$LifeMetricsResponseCopyWithImpl<$Res, _$LifeMetricsResponseImpl>
    implements _$$LifeMetricsResponseImplCopyWith<$Res> {
  __$$LifeMetricsResponseImplCopyWithImpl(_$LifeMetricsResponseImpl _value,
      $Res Function(_$LifeMetricsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? map = freezed,
    Object? pp = freezed,
    Object? recovery_heart_rate = freezed,
    Object? average_resting_oxygen_level = freezed,
    Object? average_active_oxygen_level = freezed,
  }) {
    return _then(_$LifeMetricsResponseImpl(
      map: freezed == map
          ? _value.map
          : map // ignore: cast_nullable_to_non_nullable
              as num?,
      pp: freezed == pp
          ? _value.pp
          : pp // ignore: cast_nullable_to_non_nullable
              as num?,
      recovery_heart_rate: freezed == recovery_heart_rate
          ? _value.recovery_heart_rate
          : recovery_heart_rate // ignore: cast_nullable_to_non_nullable
              as num?,
      average_resting_oxygen_level: freezed == average_resting_oxygen_level
          ? _value.average_resting_oxygen_level
          : average_resting_oxygen_level // ignore: cast_nullable_to_non_nullable
              as num?,
      average_active_oxygen_level: freezed == average_active_oxygen_level
          ? _value.average_active_oxygen_level
          : average_active_oxygen_level // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LifeMetricsResponseImpl implements _LifeMetricsResponse {
  const _$LifeMetricsResponseImpl(
      {this.map,
      this.pp,
      this.recovery_heart_rate,
      this.average_resting_oxygen_level,
      this.average_active_oxygen_level});

  factory _$LifeMetricsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LifeMetricsResponseImplFromJson(json);

  @override
  final num? map;
  @override
  final num? pp;
  @override
  final num? recovery_heart_rate;
  @override
  final num? average_resting_oxygen_level;
  @override
  final num? average_active_oxygen_level;

  @override
  String toString() {
    return 'LifeMetricsResponse(map: $map, pp: $pp, recovery_heart_rate: $recovery_heart_rate, average_resting_oxygen_level: $average_resting_oxygen_level, average_active_oxygen_level: $average_active_oxygen_level)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LifeMetricsResponseImpl &&
            (identical(other.map, map) || other.map == map) &&
            (identical(other.pp, pp) || other.pp == pp) &&
            (identical(other.recovery_heart_rate, recovery_heart_rate) ||
                other.recovery_heart_rate == recovery_heart_rate) &&
            (identical(other.average_resting_oxygen_level,
                    average_resting_oxygen_level) ||
                other.average_resting_oxygen_level ==
                    average_resting_oxygen_level) &&
            (identical(other.average_active_oxygen_level,
                    average_active_oxygen_level) ||
                other.average_active_oxygen_level ==
                    average_active_oxygen_level));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, map, pp, recovery_heart_rate,
      average_resting_oxygen_level, average_active_oxygen_level);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LifeMetricsResponseImplCopyWith<_$LifeMetricsResponseImpl> get copyWith =>
      __$$LifeMetricsResponseImplCopyWithImpl<_$LifeMetricsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LifeMetricsResponseImplToJson(
      this,
    );
  }
}

abstract class _LifeMetricsResponse implements LifeMetricsResponse {
  const factory _LifeMetricsResponse(
      {final num? map,
      final num? pp,
      final num? recovery_heart_rate,
      final num? average_resting_oxygen_level,
      final num? average_active_oxygen_level}) = _$LifeMetricsResponseImpl;

  factory _LifeMetricsResponse.fromJson(Map<String, dynamic> json) =
      _$LifeMetricsResponseImpl.fromJson;

  @override
  num? get map;
  @override
  num? get pp;
  @override
  num? get recovery_heart_rate;
  @override
  num? get average_resting_oxygen_level;
  @override
  num? get average_active_oxygen_level;
  @override
  @JsonKey(ignore: true)
  _$$LifeMetricsResponseImplCopyWith<_$LifeMetricsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
