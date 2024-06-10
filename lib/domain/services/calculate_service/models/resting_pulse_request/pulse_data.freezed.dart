// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pulse_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PulseData _$PulseDataFromJson(Map<String, dynamic> json) {
  return _PulseData.fromJson(json);
}

/// @nodoc
mixin _$PulseData {
  String get time => throw _privateConstructorUsedError;
  int get pulse => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PulseDataCopyWith<PulseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PulseDataCopyWith<$Res> {
  factory $PulseDataCopyWith(PulseData value, $Res Function(PulseData) then) =
      _$PulseDataCopyWithImpl<$Res, PulseData>;
  @useResult
  $Res call({String time, int pulse});
}

/// @nodoc
class _$PulseDataCopyWithImpl<$Res, $Val extends PulseData>
    implements $PulseDataCopyWith<$Res> {
  _$PulseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? pulse = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      pulse: null == pulse
          ? _value.pulse
          : pulse // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PulseDataImplCopyWith<$Res>
    implements $PulseDataCopyWith<$Res> {
  factory _$$PulseDataImplCopyWith(
          _$PulseDataImpl value, $Res Function(_$PulseDataImpl) then) =
      __$$PulseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String time, int pulse});
}

/// @nodoc
class __$$PulseDataImplCopyWithImpl<$Res>
    extends _$PulseDataCopyWithImpl<$Res, _$PulseDataImpl>
    implements _$$PulseDataImplCopyWith<$Res> {
  __$$PulseDataImplCopyWithImpl(
      _$PulseDataImpl _value, $Res Function(_$PulseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? pulse = null,
  }) {
    return _then(_$PulseDataImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      pulse: null == pulse
          ? _value.pulse
          : pulse // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PulseDataImpl implements _PulseData {
  const _$PulseDataImpl({required this.time, required this.pulse});

  factory _$PulseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PulseDataImplFromJson(json);

  @override
  final String time;
  @override
  final int pulse;

  @override
  String toString() {
    return 'PulseData(time: $time, pulse: $pulse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PulseDataImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.pulse, pulse) || other.pulse == pulse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, time, pulse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PulseDataImplCopyWith<_$PulseDataImpl> get copyWith =>
      __$$PulseDataImplCopyWithImpl<_$PulseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PulseDataImplToJson(
      this,
    );
  }
}

abstract class _PulseData implements PulseData {
  const factory _PulseData(
      {required final String time, required final int pulse}) = _$PulseDataImpl;

  factory _PulseData.fromJson(Map<String, dynamic> json) =
      _$PulseDataImpl.fromJson;

  @override
  String get time;
  @override
  int get pulse;
  @override
  @JsonKey(ignore: true)
  _$$PulseDataImplCopyWith<_$PulseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
