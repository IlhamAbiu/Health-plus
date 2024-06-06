// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sleep_metrics_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SleepMetricsModels _$SleepMetricsModelsFromJson(Map<String, dynamic> json) {
  return _SleepMetricsModels.fromJson(json);
}

/// @nodoc
mixin _$SleepMetricsModels {
  double get sleep_score => throw _privateConstructorUsedError;
  double get sleep_efficiency => throw _privateConstructorUsedError;
  int get sleep_latency => throw _privateConstructorUsedError;
  int get deep_sleep_percent => throw _privateConstructorUsedError;
  int get rem_sleep_percent => throw _privateConstructorUsedError;
  int get light_sleep_percent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SleepMetricsModelsCopyWith<SleepMetricsModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SleepMetricsModelsCopyWith<$Res> {
  factory $SleepMetricsModelsCopyWith(
          SleepMetricsModels value, $Res Function(SleepMetricsModels) then) =
      _$SleepMetricsModelsCopyWithImpl<$Res, SleepMetricsModels>;
  @useResult
  $Res call(
      {double sleep_score,
      double sleep_efficiency,
      int sleep_latency,
      int deep_sleep_percent,
      int rem_sleep_percent,
      int light_sleep_percent});
}

/// @nodoc
class _$SleepMetricsModelsCopyWithImpl<$Res, $Val extends SleepMetricsModels>
    implements $SleepMetricsModelsCopyWith<$Res> {
  _$SleepMetricsModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sleep_score = null,
    Object? sleep_efficiency = null,
    Object? sleep_latency = null,
    Object? deep_sleep_percent = null,
    Object? rem_sleep_percent = null,
    Object? light_sleep_percent = null,
  }) {
    return _then(_value.copyWith(
      sleep_score: null == sleep_score
          ? _value.sleep_score
          : sleep_score // ignore: cast_nullable_to_non_nullable
              as double,
      sleep_efficiency: null == sleep_efficiency
          ? _value.sleep_efficiency
          : sleep_efficiency // ignore: cast_nullable_to_non_nullable
              as double,
      sleep_latency: null == sleep_latency
          ? _value.sleep_latency
          : sleep_latency // ignore: cast_nullable_to_non_nullable
              as int,
      deep_sleep_percent: null == deep_sleep_percent
          ? _value.deep_sleep_percent
          : deep_sleep_percent // ignore: cast_nullable_to_non_nullable
              as int,
      rem_sleep_percent: null == rem_sleep_percent
          ? _value.rem_sleep_percent
          : rem_sleep_percent // ignore: cast_nullable_to_non_nullable
              as int,
      light_sleep_percent: null == light_sleep_percent
          ? _value.light_sleep_percent
          : light_sleep_percent // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SleepMetricsModelsImplCopyWith<$Res>
    implements $SleepMetricsModelsCopyWith<$Res> {
  factory _$$SleepMetricsModelsImplCopyWith(_$SleepMetricsModelsImpl value,
          $Res Function(_$SleepMetricsModelsImpl) then) =
      __$$SleepMetricsModelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double sleep_score,
      double sleep_efficiency,
      int sleep_latency,
      int deep_sleep_percent,
      int rem_sleep_percent,
      int light_sleep_percent});
}

/// @nodoc
class __$$SleepMetricsModelsImplCopyWithImpl<$Res>
    extends _$SleepMetricsModelsCopyWithImpl<$Res, _$SleepMetricsModelsImpl>
    implements _$$SleepMetricsModelsImplCopyWith<$Res> {
  __$$SleepMetricsModelsImplCopyWithImpl(_$SleepMetricsModelsImpl _value,
      $Res Function(_$SleepMetricsModelsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sleep_score = null,
    Object? sleep_efficiency = null,
    Object? sleep_latency = null,
    Object? deep_sleep_percent = null,
    Object? rem_sleep_percent = null,
    Object? light_sleep_percent = null,
  }) {
    return _then(_$SleepMetricsModelsImpl(
      sleep_score: null == sleep_score
          ? _value.sleep_score
          : sleep_score // ignore: cast_nullable_to_non_nullable
              as double,
      sleep_efficiency: null == sleep_efficiency
          ? _value.sleep_efficiency
          : sleep_efficiency // ignore: cast_nullable_to_non_nullable
              as double,
      sleep_latency: null == sleep_latency
          ? _value.sleep_latency
          : sleep_latency // ignore: cast_nullable_to_non_nullable
              as int,
      deep_sleep_percent: null == deep_sleep_percent
          ? _value.deep_sleep_percent
          : deep_sleep_percent // ignore: cast_nullable_to_non_nullable
              as int,
      rem_sleep_percent: null == rem_sleep_percent
          ? _value.rem_sleep_percent
          : rem_sleep_percent // ignore: cast_nullable_to_non_nullable
              as int,
      light_sleep_percent: null == light_sleep_percent
          ? _value.light_sleep_percent
          : light_sleep_percent // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SleepMetricsModelsImpl implements _SleepMetricsModels {
  const _$SleepMetricsModelsImpl(
      {required this.sleep_score,
      required this.sleep_efficiency,
      required this.sleep_latency,
      required this.deep_sleep_percent,
      required this.rem_sleep_percent,
      required this.light_sleep_percent});

  factory _$SleepMetricsModelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SleepMetricsModelsImplFromJson(json);

  @override
  final double sleep_score;
  @override
  final double sleep_efficiency;
  @override
  final int sleep_latency;
  @override
  final int deep_sleep_percent;
  @override
  final int rem_sleep_percent;
  @override
  final int light_sleep_percent;

  @override
  String toString() {
    return 'SleepMetricsModels(sleep_score: $sleep_score, sleep_efficiency: $sleep_efficiency, sleep_latency: $sleep_latency, deep_sleep_percent: $deep_sleep_percent, rem_sleep_percent: $rem_sleep_percent, light_sleep_percent: $light_sleep_percent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SleepMetricsModelsImpl &&
            (identical(other.sleep_score, sleep_score) ||
                other.sleep_score == sleep_score) &&
            (identical(other.sleep_efficiency, sleep_efficiency) ||
                other.sleep_efficiency == sleep_efficiency) &&
            (identical(other.sleep_latency, sleep_latency) ||
                other.sleep_latency == sleep_latency) &&
            (identical(other.deep_sleep_percent, deep_sleep_percent) ||
                other.deep_sleep_percent == deep_sleep_percent) &&
            (identical(other.rem_sleep_percent, rem_sleep_percent) ||
                other.rem_sleep_percent == rem_sleep_percent) &&
            (identical(other.light_sleep_percent, light_sleep_percent) ||
                other.light_sleep_percent == light_sleep_percent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sleep_score,
      sleep_efficiency,
      sleep_latency,
      deep_sleep_percent,
      rem_sleep_percent,
      light_sleep_percent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SleepMetricsModelsImplCopyWith<_$SleepMetricsModelsImpl> get copyWith =>
      __$$SleepMetricsModelsImplCopyWithImpl<_$SleepMetricsModelsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SleepMetricsModelsImplToJson(
      this,
    );
  }
}

abstract class _SleepMetricsModels implements SleepMetricsModels {
  const factory _SleepMetricsModels(
      {required final double sleep_score,
      required final double sleep_efficiency,
      required final int sleep_latency,
      required final int deep_sleep_percent,
      required final int rem_sleep_percent,
      required final int light_sleep_percent}) = _$SleepMetricsModelsImpl;

  factory _SleepMetricsModels.fromJson(Map<String, dynamic> json) =
      _$SleepMetricsModelsImpl.fromJson;

  @override
  double get sleep_score;
  @override
  double get sleep_efficiency;
  @override
  int get sleep_latency;
  @override
  int get deep_sleep_percent;
  @override
  int get rem_sleep_percent;
  @override
  int get light_sleep_percent;
  @override
  @JsonKey(ignore: true)
  _$$SleepMetricsModelsImplCopyWith<_$SleepMetricsModelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
