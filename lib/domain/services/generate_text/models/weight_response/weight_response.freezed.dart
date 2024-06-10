// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weight_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeightResponse _$WeightResponseFromJson(Map<String, dynamic> json) {
  return _WeightResponse.fromJson(json);
}

/// @nodoc
mixin _$WeightResponse {
  String get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeightResponseCopyWith<WeightResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeightResponseCopyWith<$Res> {
  factory $WeightResponseCopyWith(
          WeightResponse value, $Res Function(WeightResponse) then) =
      _$WeightResponseCopyWithImpl<$Res, WeightResponse>;
  @useResult
  $Res call({String response});
}

/// @nodoc
class _$WeightResponseCopyWithImpl<$Res, $Val extends WeightResponse>
    implements $WeightResponseCopyWith<$Res> {
  _$WeightResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$WeightResponseImplCopyWith<$Res>
    implements $WeightResponseCopyWith<$Res> {
  factory _$$WeightResponseImplCopyWith(_$WeightResponseImpl value,
          $Res Function(_$WeightResponseImpl) then) =
      __$$WeightResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String response});
}

/// @nodoc
class __$$WeightResponseImplCopyWithImpl<$Res>
    extends _$WeightResponseCopyWithImpl<$Res, _$WeightResponseImpl>
    implements _$$WeightResponseImplCopyWith<$Res> {
  __$$WeightResponseImplCopyWithImpl(
      _$WeightResponseImpl _value, $Res Function(_$WeightResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$WeightResponseImpl(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WeightResponseImpl implements _WeightResponse {
  const _$WeightResponseImpl({required this.response});

  factory _$WeightResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeightResponseImplFromJson(json);

  @override
  final String response;

  @override
  String toString() {
    return 'WeightResponse(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeightResponseImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeightResponseImplCopyWith<_$WeightResponseImpl> get copyWith =>
      __$$WeightResponseImplCopyWithImpl<_$WeightResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeightResponseImplToJson(
      this,
    );
  }
}

abstract class _WeightResponse implements WeightResponse {
  const factory _WeightResponse({required final String response}) =
      _$WeightResponseImpl;

  factory _WeightResponse.fromJson(Map<String, dynamic> json) =
      _$WeightResponseImpl.fromJson;

  @override
  String get response;
  @override
  @JsonKey(ignore: true)
  _$$WeightResponseImplCopyWith<_$WeightResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
