// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resting_pulse_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RestingPulseRequest _$RestingPulseRequestFromJson(Map<String, dynamic> json) {
  return _RestingPulseRequest.fromJson(json);
}

/// @nodoc
mixin _$RestingPulseRequest {
  List<PulseData> get pulse_data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestingPulseRequestCopyWith<RestingPulseRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestingPulseRequestCopyWith<$Res> {
  factory $RestingPulseRequestCopyWith(
          RestingPulseRequest value, $Res Function(RestingPulseRequest) then) =
      _$RestingPulseRequestCopyWithImpl<$Res, RestingPulseRequest>;
  @useResult
  $Res call({List<PulseData> pulse_data});
}

/// @nodoc
class _$RestingPulseRequestCopyWithImpl<$Res, $Val extends RestingPulseRequest>
    implements $RestingPulseRequestCopyWith<$Res> {
  _$RestingPulseRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pulse_data = null,
  }) {
    return _then(_value.copyWith(
      pulse_data: null == pulse_data
          ? _value.pulse_data
          : pulse_data // ignore: cast_nullable_to_non_nullable
              as List<PulseData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RestingPulseRequestImplCopyWith<$Res>
    implements $RestingPulseRequestCopyWith<$Res> {
  factory _$$RestingPulseRequestImplCopyWith(_$RestingPulseRequestImpl value,
          $Res Function(_$RestingPulseRequestImpl) then) =
      __$$RestingPulseRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PulseData> pulse_data});
}

/// @nodoc
class __$$RestingPulseRequestImplCopyWithImpl<$Res>
    extends _$RestingPulseRequestCopyWithImpl<$Res, _$RestingPulseRequestImpl>
    implements _$$RestingPulseRequestImplCopyWith<$Res> {
  __$$RestingPulseRequestImplCopyWithImpl(_$RestingPulseRequestImpl _value,
      $Res Function(_$RestingPulseRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pulse_data = null,
  }) {
    return _then(_$RestingPulseRequestImpl(
      pulse_data: null == pulse_data
          ? _value._pulse_data
          : pulse_data // ignore: cast_nullable_to_non_nullable
              as List<PulseData>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$RestingPulseRequestImpl implements _RestingPulseRequest {
  const _$RestingPulseRequestImpl({required final List<PulseData> pulse_data})
      : _pulse_data = pulse_data;

  factory _$RestingPulseRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RestingPulseRequestImplFromJson(json);

  final List<PulseData> _pulse_data;
  @override
  List<PulseData> get pulse_data {
    if (_pulse_data is EqualUnmodifiableListView) return _pulse_data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pulse_data);
  }

  @override
  String toString() {
    return 'RestingPulseRequest(pulse_data: $pulse_data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestingPulseRequestImpl &&
            const DeepCollectionEquality()
                .equals(other._pulse_data, _pulse_data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_pulse_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestingPulseRequestImplCopyWith<_$RestingPulseRequestImpl> get copyWith =>
      __$$RestingPulseRequestImplCopyWithImpl<_$RestingPulseRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RestingPulseRequestImplToJson(
      this,
    );
  }
}

abstract class _RestingPulseRequest implements RestingPulseRequest {
  const factory _RestingPulseRequest(
      {required final List<PulseData> pulse_data}) = _$RestingPulseRequestImpl;

  factory _RestingPulseRequest.fromJson(Map<String, dynamic> json) =
      _$RestingPulseRequestImpl.fromJson;

  @override
  List<PulseData> get pulse_data;
  @override
  @JsonKey(ignore: true)
  _$$RestingPulseRequestImplCopyWith<_$RestingPulseRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
