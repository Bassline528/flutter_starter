// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterDto _$RegisterDtoFromJson(Map<String, dynamic> json) {
  return _RegisterDto.fromJson(json);
}

/// @nodoc
mixin _$RegisterDto {
  String get email => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterDtoCopyWith<RegisterDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterDtoCopyWith<$Res> {
  factory $RegisterDtoCopyWith(
          RegisterDto value, $Res Function(RegisterDto) then) =
      _$RegisterDtoCopyWithImpl<$Res, RegisterDto>;
  @useResult
  $Res call(
      {String email,
      String username,
      String firstName,
      String lastName,
      String password});
}

/// @nodoc
class _$RegisterDtoCopyWithImpl<$Res, $Val extends RegisterDto>
    implements $RegisterDtoCopyWith<$Res> {
  _$RegisterDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? username = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterDtoCopyWith<$Res>
    implements $RegisterDtoCopyWith<$Res> {
  factory _$$_RegisterDtoCopyWith(
          _$_RegisterDto value, $Res Function(_$_RegisterDto) then) =
      __$$_RegisterDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String username,
      String firstName,
      String lastName,
      String password});
}

/// @nodoc
class __$$_RegisterDtoCopyWithImpl<$Res>
    extends _$RegisterDtoCopyWithImpl<$Res, _$_RegisterDto>
    implements _$$_RegisterDtoCopyWith<$Res> {
  __$$_RegisterDtoCopyWithImpl(
      _$_RegisterDto _value, $Res Function(_$_RegisterDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? username = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? password = null,
  }) {
    return _then(_$_RegisterDto(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterDto implements _RegisterDto {
  _$_RegisterDto(
      {required this.email,
      required this.username,
      required this.firstName,
      required this.lastName,
      required this.password});

  factory _$_RegisterDto.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterDtoFromJson(json);

  @override
  final String email;
  @override
  final String username;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String password;

  @override
  String toString() {
    return 'RegisterDto(email: $email, username: $username, firstName: $firstName, lastName: $lastName, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterDto &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, username, firstName, lastName, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterDtoCopyWith<_$_RegisterDto> get copyWith =>
      __$$_RegisterDtoCopyWithImpl<_$_RegisterDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterDtoToJson(
      this,
    );
  }
}

abstract class _RegisterDto implements RegisterDto {
  factory _RegisterDto(
      {required final String email,
      required final String username,
      required final String firstName,
      required final String lastName,
      required final String password}) = _$_RegisterDto;

  factory _RegisterDto.fromJson(Map<String, dynamic> json) =
      _$_RegisterDto.fromJson;

  @override
  String get email;
  @override
  String get username;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterDtoCopyWith<_$_RegisterDto> get copyWith =>
      throw _privateConstructorUsedError;
}
