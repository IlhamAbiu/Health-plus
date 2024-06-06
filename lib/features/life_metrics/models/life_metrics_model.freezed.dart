// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'life_metrics_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LifeMetricsModel _$LifeMetricsModelFromJson(Map<String, dynamic> json) {
  return _LifeMetricsModel.fromJson(json);
}

/// @nodoc
mixin _$LifeMetricsModel {
  num? get map => throw _privateConstructorUsedError;
  num? get pp => throw _privateConstructorUsedError;
  num? get recovery_heart_rate => throw _privateConstructorUsedError;
  num? get average_resting_oxygen_level => throw _privateConstructorUsedError;
  num? get average_active_oxygen_level => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LifeMetricsModelCopyWith<LifeMetricsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LifeMetricsModelCopyWith<$Res> {
  factory $LifeMetricsModelCopyWith(
          LifeMetricsModel value, $Res Function(LifeMetricsModel) then) =
      _$LifeMetricsModelCopyWithImpl<$Res, LifeMetricsModel>;
  @useResult
  $Res call(
      {num? map,
      num? pp,
      num? recovery_heart_rate,
      num? average_resting_oxygen_level,
      num? average_active_oxygen_level});
}

/// @nodoc
class _$LifeMetricsModelCopyWithImpl<$Res, $Val extends LifeMetricsModel>
    implements $LifeMetricsModelCopyWith<$Res> {
  _$LifeMetricsModelCopyWithImpl(this._value, this._then);

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
abstract class _$$LifeMetricsModelImplCopyWith<$Res>
    implements $LifeMetricsModelCopyWith<$Res> {
  factory _$$LifeMetricsModelImplCopyWith(_$LifeMetricsModelImpl value,
          $Res Function(_$LifeMetricsModelImpl) then) =
      __$$LifeMetricsModelImplCopyWithImpl<$Res>;
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
class __$$LifeMetricsModelImplCopyWithImpl<$Res>
    extends _$LifeMetricsModelCopyWithImpl<$Res, _$LifeMetricsModelImpl>
    implements _$$LifeMetricsModelImplCopyWith<$Res> {
  __$$LifeMetricsModelImplCopyWithImpl(_$LifeMetricsModelImpl _value,
      $Res Function(_$LifeMetricsModelImpl) _then)
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
    return _then(_$LifeMetricsModelImpl(
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

@JsonSerializable(explicitToJson: true)
class _$LifeMetricsModelImpl implements _LifeMetricsModel {
  const _$LifeMetricsModelImpl(
      {this.map,
      this.pp,
      this.recovery_heart_rate,
      this.average_resting_oxygen_level,
      this.average_active_oxygen_level});

  factory _$LifeMetricsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LifeMetricsModelImplFromJson(json);

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
    return 'LifeMetricsModel(map: $map, pp: $pp, recovery_heart_rate: $recovery_heart_rate, average_resting_oxygen_level: $average_resting_oxygen_level, average_active_oxygen_level: $average_active_oxygen_level)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LifeMetricsModelImpl &&
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
  _$$LifeMetricsModelImplCopyWith<_$LifeMetricsModelImpl> get copyWith =>
      __$$LifeMetricsModelImplCopyWithImpl<_$LifeMetricsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LifeMetricsModelImplToJson(
      this,
    );
  }
}

abstract class _LifeMetricsModel implements LifeMetricsModel {
  const factory _LifeMetricsModel(
      {final num? map,
      final num? pp,
      final num? recovery_heart_rate,
      final num? average_resting_oxygen_level,
      final num? average_active_oxygen_level}) = _$LifeMetricsModelImpl;

  factory _LifeMetricsModel.fromJson(Map<String, dynamic> json) =
      _$LifeMetricsModelImpl.fromJson;

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
  _$$LifeMetricsModelImplCopyWith<_$LifeMetricsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
