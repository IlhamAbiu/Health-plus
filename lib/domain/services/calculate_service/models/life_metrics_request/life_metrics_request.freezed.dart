// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'life_metrics_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LifeMetricsRequest _$LifeMetricsRequestFromJson(Map<String, dynamic> json) {
  return _LifeMetricsRequest.fromJson(json);
}

/// @nodoc
mixin _$LifeMetricsRequest {
  int get systolic_pressure => throw _privateConstructorUsedError;
  int get diastolic_pressure => throw _privateConstructorUsedError;
  int get resting_heart_rate => throw _privateConstructorUsedError;
  int get max_heart_rate => throw _privateConstructorUsedError;
  List<int> get oxygen_levels => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LifeMetricsRequestCopyWith<LifeMetricsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LifeMetricsRequestCopyWith<$Res> {
  factory $LifeMetricsRequestCopyWith(
          LifeMetricsRequest value, $Res Function(LifeMetricsRequest) then) =
      _$LifeMetricsRequestCopyWithImpl<$Res, LifeMetricsRequest>;
  @useResult
  $Res call(
      {int systolic_pressure,
      int diastolic_pressure,
      int resting_heart_rate,
      int max_heart_rate,
      List<int> oxygen_levels});
}

/// @nodoc
class _$LifeMetricsRequestCopyWithImpl<$Res, $Val extends LifeMetricsRequest>
    implements $LifeMetricsRequestCopyWith<$Res> {
  _$LifeMetricsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? systolic_pressure = null,
    Object? diastolic_pressure = null,
    Object? resting_heart_rate = null,
    Object? max_heart_rate = null,
    Object? oxygen_levels = null,
  }) {
    return _then(_value.copyWith(
      systolic_pressure: null == systolic_pressure
          ? _value.systolic_pressure
          : systolic_pressure // ignore: cast_nullable_to_non_nullable
              as int,
      diastolic_pressure: null == diastolic_pressure
          ? _value.diastolic_pressure
          : diastolic_pressure // ignore: cast_nullable_to_non_nullable
              as int,
      resting_heart_rate: null == resting_heart_rate
          ? _value.resting_heart_rate
          : resting_heart_rate // ignore: cast_nullable_to_non_nullable
              as int,
      max_heart_rate: null == max_heart_rate
          ? _value.max_heart_rate
          : max_heart_rate // ignore: cast_nullable_to_non_nullable
              as int,
      oxygen_levels: null == oxygen_levels
          ? _value.oxygen_levels
          : oxygen_levels // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LifeMetricsRequestImplCopyWith<$Res>
    implements $LifeMetricsRequestCopyWith<$Res> {
  factory _$$LifeMetricsRequestImplCopyWith(_$LifeMetricsRequestImpl value,
          $Res Function(_$LifeMetricsRequestImpl) then) =
      __$$LifeMetricsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int systolic_pressure,
      int diastolic_pressure,
      int resting_heart_rate,
      int max_heart_rate,
      List<int> oxygen_levels});
}

/// @nodoc
class __$$LifeMetricsRequestImplCopyWithImpl<$Res>
    extends _$LifeMetricsRequestCopyWithImpl<$Res, _$LifeMetricsRequestImpl>
    implements _$$LifeMetricsRequestImplCopyWith<$Res> {
  __$$LifeMetricsRequestImplCopyWithImpl(_$LifeMetricsRequestImpl _value,
      $Res Function(_$LifeMetricsRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? systolic_pressure = null,
    Object? diastolic_pressure = null,
    Object? resting_heart_rate = null,
    Object? max_heart_rate = null,
    Object? oxygen_levels = null,
  }) {
    return _then(_$LifeMetricsRequestImpl(
      systolic_pressure: null == systolic_pressure
          ? _value.systolic_pressure
          : systolic_pressure // ignore: cast_nullable_to_non_nullable
              as int,
      diastolic_pressure: null == diastolic_pressure
          ? _value.diastolic_pressure
          : diastolic_pressure // ignore: cast_nullable_to_non_nullable
              as int,
      resting_heart_rate: null == resting_heart_rate
          ? _value.resting_heart_rate
          : resting_heart_rate // ignore: cast_nullable_to_non_nullable
              as int,
      max_heart_rate: null == max_heart_rate
          ? _value.max_heart_rate
          : max_heart_rate // ignore: cast_nullable_to_non_nullable
              as int,
      oxygen_levels: null == oxygen_levels
          ? _value._oxygen_levels
          : oxygen_levels // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LifeMetricsRequestImpl implements _LifeMetricsRequest {
  const _$LifeMetricsRequestImpl(
      {required this.systolic_pressure,
      required this.diastolic_pressure,
      required this.resting_heart_rate,
      required this.max_heart_rate,
      required final List<int> oxygen_levels})
      : _oxygen_levels = oxygen_levels;

  factory _$LifeMetricsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$LifeMetricsRequestImplFromJson(json);

  @override
  final int systolic_pressure;
  @override
  final int diastolic_pressure;
  @override
  final int resting_heart_rate;
  @override
  final int max_heart_rate;
  final List<int> _oxygen_levels;
  @override
  List<int> get oxygen_levels {
    if (_oxygen_levels is EqualUnmodifiableListView) return _oxygen_levels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_oxygen_levels);
  }

  @override
  String toString() {
    return 'LifeMetricsRequest(systolic_pressure: $systolic_pressure, diastolic_pressure: $diastolic_pressure, resting_heart_rate: $resting_heart_rate, max_heart_rate: $max_heart_rate, oxygen_levels: $oxygen_levels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LifeMetricsRequestImpl &&
            (identical(other.systolic_pressure, systolic_pressure) ||
                other.systolic_pressure == systolic_pressure) &&
            (identical(other.diastolic_pressure, diastolic_pressure) ||
                other.diastolic_pressure == diastolic_pressure) &&
            (identical(other.resting_heart_rate, resting_heart_rate) ||
                other.resting_heart_rate == resting_heart_rate) &&
            (identical(other.max_heart_rate, max_heart_rate) ||
                other.max_heart_rate == max_heart_rate) &&
            const DeepCollectionEquality()
                .equals(other._oxygen_levels, _oxygen_levels));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      systolic_pressure,
      diastolic_pressure,
      resting_heart_rate,
      max_heart_rate,
      const DeepCollectionEquality().hash(_oxygen_levels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LifeMetricsRequestImplCopyWith<_$LifeMetricsRequestImpl> get copyWith =>
      __$$LifeMetricsRequestImplCopyWithImpl<_$LifeMetricsRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LifeMetricsRequestImplToJson(
      this,
    );
  }
}

abstract class _LifeMetricsRequest implements LifeMetricsRequest {
  const factory _LifeMetricsRequest(
      {required final int systolic_pressure,
      required final int diastolic_pressure,
      required final int resting_heart_rate,
      required final int max_heart_rate,
      required final List<int> oxygen_levels}) = _$LifeMetricsRequestImpl;

  factory _LifeMetricsRequest.fromJson(Map<String, dynamic> json) =
      _$LifeMetricsRequestImpl.fromJson;

  @override
  int get systolic_pressure;
  @override
  int get diastolic_pressure;
  @override
  int get resting_heart_rate;
  @override
  int get max_heart_rate;
  @override
  List<int> get oxygen_levels;
  @override
  @JsonKey(ignore: true)
  _$$LifeMetricsRequestImplCopyWith<_$LifeMetricsRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
