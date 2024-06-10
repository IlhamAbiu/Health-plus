// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ActivityResponse _$ActivityResponseFromJson(Map<String, dynamic> json) {
  return _ActivityResponse.fromJson(json);
}

/// @nodoc
mixin _$ActivityResponse {
  String? get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivityResponseCopyWith<ActivityResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityResponseCopyWith<$Res> {
  factory $ActivityResponseCopyWith(
          ActivityResponse value, $Res Function(ActivityResponse) then) =
      _$ActivityResponseCopyWithImpl<$Res, ActivityResponse>;
  @useResult
  $Res call({String? response});
}

/// @nodoc
class _$ActivityResponseCopyWithImpl<$Res, $Val extends ActivityResponse>
    implements $ActivityResponseCopyWith<$Res> {
  _$ActivityResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivityResponseImplCopyWith<$Res>
    implements $ActivityResponseCopyWith<$Res> {
  factory _$$ActivityResponseImplCopyWith(_$ActivityResponseImpl value,
          $Res Function(_$ActivityResponseImpl) then) =
      __$$ActivityResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? response});
}

/// @nodoc
class __$$ActivityResponseImplCopyWithImpl<$Res>
    extends _$ActivityResponseCopyWithImpl<$Res, _$ActivityResponseImpl>
    implements _$$ActivityResponseImplCopyWith<$Res> {
  __$$ActivityResponseImplCopyWithImpl(_$ActivityResponseImpl _value,
      $Res Function(_$ActivityResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$ActivityResponseImpl(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivityResponseImpl implements _ActivityResponse {
  const _$ActivityResponseImpl({this.response});

  factory _$ActivityResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityResponseImplFromJson(json);

  @override
  final String? response;

  @override
  String toString() {
    return 'ActivityResponse(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityResponseImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityResponseImplCopyWith<_$ActivityResponseImpl> get copyWith =>
      __$$ActivityResponseImplCopyWithImpl<_$ActivityResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityResponseImplToJson(
      this,
    );
  }
}

abstract class _ActivityResponse implements ActivityResponse {
  const factory _ActivityResponse({final String? response}) =
      _$ActivityResponseImpl;

  factory _ActivityResponse.fromJson(Map<String, dynamic> json) =
      _$ActivityResponseImpl.fromJson;

  @override
  String? get response;
  @override
  @JsonKey(ignore: true)
  _$$ActivityResponseImplCopyWith<_$ActivityResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
