// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'step_trends_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StepTrendsResponse _$StepTrendsResponseFromJson(Map<String, dynamic> json) {
  return _StepTrendsResponse.fromJson(json);
}

/// @nodoc
mixin _$StepTrendsResponse {
  num get mean_steps => throw _privateConstructorUsedError;
  num get steps_needed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StepTrendsResponseCopyWith<StepTrendsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepTrendsResponseCopyWith<$Res> {
  factory $StepTrendsResponseCopyWith(
          StepTrendsResponse value, $Res Function(StepTrendsResponse) then) =
      _$StepTrendsResponseCopyWithImpl<$Res, StepTrendsResponse>;
  @useResult
  $Res call({num mean_steps, num steps_needed});
}

/// @nodoc
class _$StepTrendsResponseCopyWithImpl<$Res, $Val extends StepTrendsResponse>
    implements $StepTrendsResponseCopyWith<$Res> {
  _$StepTrendsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mean_steps = null,
    Object? steps_needed = null,
  }) {
    return _then(_value.copyWith(
      mean_steps: null == mean_steps
          ? _value.mean_steps
          : mean_steps // ignore: cast_nullable_to_non_nullable
              as num,
      steps_needed: null == steps_needed
          ? _value.steps_needed
          : steps_needed // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StepTrendsResponseImplCopyWith<$Res>
    implements $StepTrendsResponseCopyWith<$Res> {
  factory _$$StepTrendsResponseImplCopyWith(_$StepTrendsResponseImpl value,
          $Res Function(_$StepTrendsResponseImpl) then) =
      __$$StepTrendsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num mean_steps, num steps_needed});
}

/// @nodoc
class __$$StepTrendsResponseImplCopyWithImpl<$Res>
    extends _$StepTrendsResponseCopyWithImpl<$Res, _$StepTrendsResponseImpl>
    implements _$$StepTrendsResponseImplCopyWith<$Res> {
  __$$StepTrendsResponseImplCopyWithImpl(_$StepTrendsResponseImpl _value,
      $Res Function(_$StepTrendsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mean_steps = null,
    Object? steps_needed = null,
  }) {
    return _then(_$StepTrendsResponseImpl(
      mean_steps: null == mean_steps
          ? _value.mean_steps
          : mean_steps // ignore: cast_nullable_to_non_nullable
              as num,
      steps_needed: null == steps_needed
          ? _value.steps_needed
          : steps_needed // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$StepTrendsResponseImpl implements _StepTrendsResponse {
  const _$StepTrendsResponseImpl(
      {required this.mean_steps, required this.steps_needed});

  factory _$StepTrendsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StepTrendsResponseImplFromJson(json);

  @override
  final num mean_steps;
  @override
  final num steps_needed;

  @override
  String toString() {
    return 'StepTrendsResponse(mean_steps: $mean_steps, steps_needed: $steps_needed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StepTrendsResponseImpl &&
            (identical(other.mean_steps, mean_steps) ||
                other.mean_steps == mean_steps) &&
            (identical(other.steps_needed, steps_needed) ||
                other.steps_needed == steps_needed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mean_steps, steps_needed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StepTrendsResponseImplCopyWith<_$StepTrendsResponseImpl> get copyWith =>
      __$$StepTrendsResponseImplCopyWithImpl<_$StepTrendsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StepTrendsResponseImplToJson(
      this,
    );
  }
}

abstract class _StepTrendsResponse implements StepTrendsResponse {
  const factory _StepTrendsResponse(
      {required final num mean_steps,
      required final num steps_needed}) = _$StepTrendsResponseImpl;

  factory _StepTrendsResponse.fromJson(Map<String, dynamic> json) =
      _$StepTrendsResponseImpl.fromJson;

  @override
  num get mean_steps;
  @override
  num get steps_needed;
  @override
  @JsonKey(ignore: true)
  _$$StepTrendsResponseImplCopyWith<_$StepTrendsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
