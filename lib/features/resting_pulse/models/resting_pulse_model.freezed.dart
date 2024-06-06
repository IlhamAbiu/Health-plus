// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resting_pulse_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RestingPulseModel _$RestingPulseModelFromJson(Map<String, dynamic> json) {
  return _RestingPulseModel.fromJson(json);
}

/// @nodoc
mixin _$RestingPulseModel {
  int? get mean_pulse => throw _privateConstructorUsedError;
  int? get median_pulse => throw _privateConstructorUsedError;
  int? get resting_pulse => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestingPulseModelCopyWith<RestingPulseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestingPulseModelCopyWith<$Res> {
  factory $RestingPulseModelCopyWith(
          RestingPulseModel value, $Res Function(RestingPulseModel) then) =
      _$RestingPulseModelCopyWithImpl<$Res, RestingPulseModel>;
  @useResult
  $Res call({int? mean_pulse, int? median_pulse, int? resting_pulse});
}

/// @nodoc
class _$RestingPulseModelCopyWithImpl<$Res, $Val extends RestingPulseModel>
    implements $RestingPulseModelCopyWith<$Res> {
  _$RestingPulseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$RestingPulseModelImplCopyWith<$Res>
    implements $RestingPulseModelCopyWith<$Res> {
  factory _$$RestingPulseModelImplCopyWith(_$RestingPulseModelImpl value,
          $Res Function(_$RestingPulseModelImpl) then) =
      __$$RestingPulseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? mean_pulse, int? median_pulse, int? resting_pulse});
}

/// @nodoc
class __$$RestingPulseModelImplCopyWithImpl<$Res>
    extends _$RestingPulseModelCopyWithImpl<$Res, _$RestingPulseModelImpl>
    implements _$$RestingPulseModelImplCopyWith<$Res> {
  __$$RestingPulseModelImplCopyWithImpl(_$RestingPulseModelImpl _value,
      $Res Function(_$RestingPulseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mean_pulse = freezed,
    Object? median_pulse = freezed,
    Object? resting_pulse = freezed,
  }) {
    return _then(_$RestingPulseModelImpl(
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

@JsonSerializable(explicitToJson: true)
class _$RestingPulseModelImpl implements _RestingPulseModel {
  const _$RestingPulseModelImpl(
      {this.mean_pulse, this.median_pulse, this.resting_pulse});

  factory _$RestingPulseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RestingPulseModelImplFromJson(json);

  @override
  final int? mean_pulse;
  @override
  final int? median_pulse;
  @override
  final int? resting_pulse;

  @override
  String toString() {
    return 'RestingPulseModel(mean_pulse: $mean_pulse, median_pulse: $median_pulse, resting_pulse: $resting_pulse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestingPulseModelImpl &&
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
  _$$RestingPulseModelImplCopyWith<_$RestingPulseModelImpl> get copyWith =>
      __$$RestingPulseModelImplCopyWithImpl<_$RestingPulseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RestingPulseModelImplToJson(
      this,
    );
  }
}

abstract class _RestingPulseModel implements RestingPulseModel {
  const factory _RestingPulseModel(
      {final int? mean_pulse,
      final int? median_pulse,
      final int? resting_pulse}) = _$RestingPulseModelImpl;

  factory _RestingPulseModel.fromJson(Map<String, dynamic> json) =
      _$RestingPulseModelImpl.fromJson;

  @override
  int? get mean_pulse;
  @override
  int? get median_pulse;
  @override
  int? get resting_pulse;
  @override
  @JsonKey(ignore: true)
  _$$RestingPulseModelImplCopyWith<_$RestingPulseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
