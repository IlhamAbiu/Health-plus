// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'life_indicators_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LifeIndicatorsResponse _$LifeIndicatorsResponseFromJson(
    Map<String, dynamic> json) {
  return _LifeIndicatorsResponse.fromJson(json);
}

/// @nodoc
mixin _$LifeIndicatorsResponse {
  String get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LifeIndicatorsResponseCopyWith<LifeIndicatorsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LifeIndicatorsResponseCopyWith<$Res> {
  factory $LifeIndicatorsResponseCopyWith(LifeIndicatorsResponse value,
          $Res Function(LifeIndicatorsResponse) then) =
      _$LifeIndicatorsResponseCopyWithImpl<$Res, LifeIndicatorsResponse>;
  @useResult
  $Res call({String response});
}

/// @nodoc
class _$LifeIndicatorsResponseCopyWithImpl<$Res,
        $Val extends LifeIndicatorsResponse>
    implements $LifeIndicatorsResponseCopyWith<$Res> {
  _$LifeIndicatorsResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$LifeIndicatorsResponseImplCopyWith<$Res>
    implements $LifeIndicatorsResponseCopyWith<$Res> {
  factory _$$LifeIndicatorsResponseImplCopyWith(
          _$LifeIndicatorsResponseImpl value,
          $Res Function(_$LifeIndicatorsResponseImpl) then) =
      __$$LifeIndicatorsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String response});
}

/// @nodoc
class __$$LifeIndicatorsResponseImplCopyWithImpl<$Res>
    extends _$LifeIndicatorsResponseCopyWithImpl<$Res,
        _$LifeIndicatorsResponseImpl>
    implements _$$LifeIndicatorsResponseImplCopyWith<$Res> {
  __$$LifeIndicatorsResponseImplCopyWithImpl(
      _$LifeIndicatorsResponseImpl _value,
      $Res Function(_$LifeIndicatorsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$LifeIndicatorsResponseImpl(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$LifeIndicatorsResponseImpl implements _LifeIndicatorsResponse {
  const _$LifeIndicatorsResponseImpl({required this.response});

  factory _$LifeIndicatorsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LifeIndicatorsResponseImplFromJson(json);

  @override
  final String response;

  @override
  String toString() {
    return 'LifeIndicatorsResponse(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LifeIndicatorsResponseImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LifeIndicatorsResponseImplCopyWith<_$LifeIndicatorsResponseImpl>
      get copyWith => __$$LifeIndicatorsResponseImplCopyWithImpl<
          _$LifeIndicatorsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LifeIndicatorsResponseImplToJson(
      this,
    );
  }
}

abstract class _LifeIndicatorsResponse implements LifeIndicatorsResponse {
  const factory _LifeIndicatorsResponse({required final String response}) =
      _$LifeIndicatorsResponseImpl;

  factory _LifeIndicatorsResponse.fromJson(Map<String, dynamic> json) =
      _$LifeIndicatorsResponseImpl.fromJson;

  @override
  String get response;
  @override
  @JsonKey(ignore: true)
  _$$LifeIndicatorsResponseImplCopyWith<_$LifeIndicatorsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
