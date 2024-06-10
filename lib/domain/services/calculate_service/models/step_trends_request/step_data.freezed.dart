// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'step_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StepData _$StepDataFromJson(Map<String, dynamic> json) {
  return _StepData.fromJson(json);
}

/// @nodoc
mixin _$StepData {
  String get date => throw _privateConstructorUsedError;
  int get steps => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StepDataCopyWith<StepData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepDataCopyWith<$Res> {
  factory $StepDataCopyWith(StepData value, $Res Function(StepData) then) =
      _$StepDataCopyWithImpl<$Res, StepData>;
  @useResult
  $Res call({String date, int steps});
}

/// @nodoc
class _$StepDataCopyWithImpl<$Res, $Val extends StepData>
    implements $StepDataCopyWith<$Res> {
  _$StepDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? steps = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StepDataImplCopyWith<$Res>
    implements $StepDataCopyWith<$Res> {
  factory _$$StepDataImplCopyWith(
          _$StepDataImpl value, $Res Function(_$StepDataImpl) then) =
      __$$StepDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, int steps});
}

/// @nodoc
class __$$StepDataImplCopyWithImpl<$Res>
    extends _$StepDataCopyWithImpl<$Res, _$StepDataImpl>
    implements _$$StepDataImplCopyWith<$Res> {
  __$$StepDataImplCopyWithImpl(
      _$StepDataImpl _value, $Res Function(_$StepDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? steps = null,
  }) {
    return _then(_$StepDataImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$StepDataImpl implements _StepData {
  const _$StepDataImpl({required this.date, required this.steps});

  factory _$StepDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StepDataImplFromJson(json);

  @override
  final String date;
  @override
  final int steps;

  @override
  String toString() {
    return 'StepData(date: $date, steps: $steps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StepDataImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.steps, steps) || other.steps == steps));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, steps);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StepDataImplCopyWith<_$StepDataImpl> get copyWith =>
      __$$StepDataImplCopyWithImpl<_$StepDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StepDataImplToJson(
      this,
    );
  }
}

abstract class _StepData implements StepData {
  const factory _StepData(
      {required final String date, required final int steps}) = _$StepDataImpl;

  factory _StepData.fromJson(Map<String, dynamic> json) =
      _$StepDataImpl.fromJson;

  @override
  String get date;
  @override
  int get steps;
  @override
  @JsonKey(ignore: true)
  _$$StepDataImplCopyWith<_$StepDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
