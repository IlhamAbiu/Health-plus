// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sleep_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SleepResponse _$SleepResponseFromJson(Map<String, dynamic> json) {
  return _SleepResponse.fromJson(json);
}

/// @nodoc
mixin _$SleepResponse {
  String get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SleepResponseCopyWith<SleepResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SleepResponseCopyWith<$Res> {
  factory $SleepResponseCopyWith(
          SleepResponse value, $Res Function(SleepResponse) then) =
      _$SleepResponseCopyWithImpl<$Res, SleepResponse>;
  @useResult
  $Res call({String response});
}

/// @nodoc
class _$SleepResponseCopyWithImpl<$Res, $Val extends SleepResponse>
    implements $SleepResponseCopyWith<$Res> {
  _$SleepResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_value.copyWith(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SleepResponseImplCopyWith<$Res>
    implements $SleepResponseCopyWith<$Res> {
  factory _$$SleepResponseImplCopyWith(
          _$SleepResponseImpl value, $Res Function(_$SleepResponseImpl) then) =
      __$$SleepResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String response});
}

/// @nodoc
class __$$SleepResponseImplCopyWithImpl<$Res>
    extends _$SleepResponseCopyWithImpl<$Res, _$SleepResponseImpl>
    implements _$$SleepResponseImplCopyWith<$Res> {
  __$$SleepResponseImplCopyWithImpl(
      _$SleepResponseImpl _value, $Res Function(_$SleepResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$SleepResponseImpl(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SleepResponseImpl implements _SleepResponse {
  const _$SleepResponseImpl({required this.response});

  factory _$SleepResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SleepResponseImplFromJson(json);

  @override
  final String response;

  @override
  String toString() {
    return 'SleepResponse(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SleepResponseImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SleepResponseImplCopyWith<_$SleepResponseImpl> get copyWith =>
      __$$SleepResponseImplCopyWithImpl<_$SleepResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SleepResponseImplToJson(
      this,
    );
  }
}

abstract class _SleepResponse implements SleepResponse {
  const factory _SleepResponse({required final String response}) =
      _$SleepResponseImpl;

  factory _SleepResponse.fromJson(Map<String, dynamic> json) =
      _$SleepResponseImpl.fromJson;

  @override
  String get response;
  @override
  @JsonKey(ignore: true)
  _$$SleepResponseImplCopyWith<_$SleepResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
