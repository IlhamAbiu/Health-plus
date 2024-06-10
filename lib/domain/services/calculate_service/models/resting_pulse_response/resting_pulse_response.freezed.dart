// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resting_pulse_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RestingPulseResponse _$RestingPulseResponseFromJson(Map<String, dynamic> json) {
  return _RestingPulseResponse.fromJson(json);
}

/// @nodoc
mixin _$RestingPulseResponse {
  int? get mean_pulse => throw _privateConstructorUsedError;
  int? get median_pulse => throw _privateConstructorUsedError;
  int? get resting_pulse => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestingPulseResponseCopyWith<RestingPulseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestingPulseResponseCopyWith<$Res> {
  factory $RestingPulseResponseCopyWith(RestingPulseResponse value,
          $Res Function(RestingPulseResponse) then) =
      _$RestingPulseResponseCopyWithImpl<$Res, RestingPulseResponse>;
  @useResult
  $Res call({int? mean_pulse, int? median_pulse, int? resting_pulse});
}

/// @nodoc
class _$RestingPulseResponseCopyWithImpl<$Res,
        $Val extends RestingPulseResponse>
    implements $RestingPulseResponseCopyWith<$Res> {
  _$RestingPulseResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mean_pulse = freezed,
    Object? median_pulse = freezed,
    Object? resting_pulse = freezed,
  }) {
    return _then(_value.copyWith(
      mean_pulse: freezed == mean_pulse
          ? _value.mean_pulse
          : mean_pulse // ignore: cast_nullable_to_non_nullable
              as int?,
      median_pulse: freezed == median_pulse
          ? _value.median_pulse
          : median_pulse // ignore: cast_nullable_to_non_nullable
              as int?,
      resting_pulse: freezed == resting_pulse
          ? _value.resting_pulse
          : resting_pulse // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RestingPulseResponseImplCopyWith<$Res>
    implements $RestingPulseResponseCopyWith<$Res> {
  factory _$$RestingPulseResponseImplCopyWith(_$RestingPulseResponseImpl value,
          $Res Function(_$RestingPulseResponseImpl) then) =
      __$$RestingPulseResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? mean_pulse, int? median_pulse, int? resting_pulse});
}

/// @nodoc
class __$$RestingPulseResponseImplCopyWithImpl<$Res>
    extends _$RestingPulseResponseCopyWithImpl<$Res, _$RestingPulseResponseImpl>
    implements _$$RestingPulseResponseImplCopyWith<$Res> {
  __$$RestingPulseResponseImplCopyWithImpl(_$RestingPulseResponseImpl _value,
      $Res Function(_$RestingPulseResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mean_pulse = freezed,
    Object? median_pulse = freezed,
    Object? resting_pulse = freezed,
  }) {
    return _then(_$RestingPulseResponseImpl(
      mean_pulse: freezed == mean_pulse
          ? _value.mean_pulse
          : mean_pulse // ignore: cast_nullable_to_non_nullable
              as int?,
      median_pulse: freezed == median_pulse
          ? _value.median_pulse
          : median_pulse // ignore: cast_nullable_to_non_nullable
              as int?,
      resting_pulse: freezed == resting_pulse
          ? _value.resting_pulse
          : resting_pulse // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RestingPulseResponseImpl implements _RestingPulseResponse {
  const _$RestingPulseResponseImpl(
      {this.mean_pulse, this.median_pulse, this.resting_pulse});

  factory _$RestingPulseResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RestingPulseResponseImplFromJson(json);

  @override
  final int? mean_pulse;
  @override
  final int? median_pulse;
  @override
  final int? resting_pulse;

  @override
  String toString() {
    return 'RestingPulseResponse(mean_pulse: $mean_pulse, median_pulse: $median_pulse, resting_pulse: $resting_pulse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestingPulseResponseImpl &&
            (identical(other.mean_pulse, mean_pulse) ||
                other.mean_pulse == mean_pulse) &&
            (identical(other.median_pulse, median_pulse) ||
                other.median_pulse == median_pulse) &&
            (identical(other.resting_pulse, resting_pulse) ||
                other.resting_pulse == resting_pulse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, mean_pulse, median_pulse, resting_pulse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestingPulseResponseImplCopyWith<_$RestingPulseResponseImpl>
      get copyWith =>
          __$$RestingPulseResponseImplCopyWithImpl<_$RestingPulseResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RestingPulseResponseImplToJson(
      this,
    );
  }
}

abstract class _RestingPulseResponse implements RestingPulseResponse {
  const factory _RestingPulseResponse(
      {final int? mean_pulse,
      final int? median_pulse,
      final int? resting_pulse}) = _$RestingPulseResponseImpl;

  factory _RestingPulseResponse.fromJson(Map<String, dynamic> json) =
      _$RestingPulseResponseImpl.fromJson;

  @override
  int? get mean_pulse;
  @override
  int? get median_pulse;
  @override
  int? get resting_pulse;
  @override
  @JsonKey(ignore: true)
  _$$RestingPulseResponseImplCopyWith<_$RestingPulseResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
