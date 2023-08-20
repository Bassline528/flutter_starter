// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) {
  return _LoginResponse.fromJson(json);
}

/// @nodoc
mixin _$LoginResponse {
  String get refreshToken => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  int get tokenExpires => throw _privateConstructorUsedError;
  UserResponse get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseCopyWith<LoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseCopyWith<$Res> {
  factory $LoginResponseCopyWith(
          LoginResponse value, $Res Function(LoginResponse) then) =
      _$LoginResponseCopyWithImpl<$Res, LoginResponse>;
  @useResult
  $Res call(
      {String refreshToken, String token, int tokenExpires, UserResponse user});

  $UserResponseCopyWith<$Res> get user;
}

/// @nodoc
class _$LoginResponseCopyWithImpl<$Res, $Val extends LoginResponse>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
    Object? token = null,
    Object? tokenExpires = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      tokenExpires: null == tokenExpires
          ? _value.tokenExpires
          : tokenExpires // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserResponse,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserResponseCopyWith<$Res> get user {
    return $UserResponseCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoginResponseCopyWith<$Res>
    implements $LoginResponseCopyWith<$Res> {
  factory _$$_LoginResponseCopyWith(
          _$_LoginResponse value, $Res Function(_$_LoginResponse) then) =
      __$$_LoginResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String refreshToken, String token, int tokenExpires, UserResponse user});

  @override
  $UserResponseCopyWith<$Res> get user;
}

/// @nodoc
class __$$_LoginResponseCopyWithImpl<$Res>
    extends _$LoginResponseCopyWithImpl<$Res, _$_LoginResponse>
    implements _$$_LoginResponseCopyWith<$Res> {
  __$$_LoginResponseCopyWithImpl(
      _$_LoginResponse _value, $Res Function(_$_LoginResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
    Object? token = null,
    Object? tokenExpires = null,
    Object? user = null,
  }) {
    return _then(_$_LoginResponse(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      tokenExpires: null == tokenExpires
          ? _value.tokenExpires
          : tokenExpires // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginResponse implements _LoginResponse {
  _$_LoginResponse(
      {required this.refreshToken,
      required this.token,
      required this.tokenExpires,
      required this.user});

  factory _$_LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LoginResponseFromJson(json);

  @override
  final String refreshToken;
  @override
  final String token;
  @override
  final int tokenExpires;
  @override
  final UserResponse user;

  @override
  String toString() {
    return 'LoginResponse(refreshToken: $refreshToken, token: $token, tokenExpires: $tokenExpires, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginResponse &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.tokenExpires, tokenExpires) ||
                other.tokenExpires == tokenExpires) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, refreshToken, token, tokenExpires, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginResponseCopyWith<_$_LoginResponse> get copyWith =>
      __$$_LoginResponseCopyWithImpl<_$_LoginResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginResponseToJson(
      this,
    );
  }
}

abstract class _LoginResponse implements LoginResponse {
  factory _LoginResponse(
      {required final String refreshToken,
      required final String token,
      required final int tokenExpires,
      required final UserResponse user}) = _$_LoginResponse;

  factory _LoginResponse.fromJson(Map<String, dynamic> json) =
      _$_LoginResponse.fromJson;

  @override
  String get refreshToken;
  @override
  String get token;
  @override
  int get tokenExpires;
  @override
  UserResponse get user;
  @override
  @JsonKey(ignore: true)
  _$$_LoginResponseCopyWith<_$_LoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) {
  return _UserResponse.fromJson(json);
}

/// @nodoc
mixin _$UserResponse {
  int get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get provider => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  Role get role => throw _privateConstructorUsedError;
  Role get status => throw _privateConstructorUsedError;
  String get entity => throw _privateConstructorUsedError;
  String? get socialId => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserResponseCopyWith<UserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResponseCopyWith<$Res> {
  factory $UserResponseCopyWith(
          UserResponse value, $Res Function(UserResponse) then) =
      _$UserResponseCopyWithImpl<$Res, UserResponse>;
  @useResult
  $Res call(
      {int id,
      String email,
      String provider,
      String firstName,
      String lastName,
      DateTime createdAt,
      DateTime updatedAt,
      Role role,
      Role status,
      String entity,
      String? socialId,
      DateTime? deletedAt,
      String? photo});

  $RoleCopyWith<$Res> get role;
  $RoleCopyWith<$Res> get status;
}

/// @nodoc
class _$UserResponseCopyWithImpl<$Res, $Val extends UserResponse>
    implements $UserResponseCopyWith<$Res> {
  _$UserResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? provider = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? role = null,
    Object? status = null,
    Object? entity = null,
    Object? socialId = freezed,
    Object? deletedAt = freezed,
    Object? photo = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Role,
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as String,
      socialId: freezed == socialId
          ? _value.socialId
          : socialId // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RoleCopyWith<$Res> get role {
    return $RoleCopyWith<$Res>(_value.role, (value) {
      return _then(_value.copyWith(role: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RoleCopyWith<$Res> get status {
    return $RoleCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserResponseCopyWith<$Res>
    implements $UserResponseCopyWith<$Res> {
  factory _$$_UserResponseCopyWith(
          _$_UserResponse value, $Res Function(_$_UserResponse) then) =
      __$$_UserResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String email,
      String provider,
      String firstName,
      String lastName,
      DateTime createdAt,
      DateTime updatedAt,
      Role role,
      Role status,
      String entity,
      String? socialId,
      DateTime? deletedAt,
      String? photo});

  @override
  $RoleCopyWith<$Res> get role;
  @override
  $RoleCopyWith<$Res> get status;
}

/// @nodoc
class __$$_UserResponseCopyWithImpl<$Res>
    extends _$UserResponseCopyWithImpl<$Res, _$_UserResponse>
    implements _$$_UserResponseCopyWith<$Res> {
  __$$_UserResponseCopyWithImpl(
      _$_UserResponse _value, $Res Function(_$_UserResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? provider = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? role = null,
    Object? status = null,
    Object? entity = null,
    Object? socialId = freezed,
    Object? deletedAt = freezed,
    Object? photo = freezed,
  }) {
    return _then(_$_UserResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Role,
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as String,
      socialId: freezed == socialId
          ? _value.socialId
          : socialId // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserResponse implements _UserResponse {
  _$_UserResponse(
      {required this.id,
      required this.email,
      required this.provider,
      required this.firstName,
      required this.lastName,
      required this.createdAt,
      required this.updatedAt,
      required this.role,
      required this.status,
      required this.entity,
      this.socialId,
      this.deletedAt,
      this.photo});

  factory _$_UserResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UserResponseFromJson(json);

  @override
  final int id;
  @override
  final String email;
  @override
  final String provider;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final Role role;
  @override
  final Role status;
  @override
  final String entity;
  @override
  final String? socialId;
  @override
  final DateTime? deletedAt;
  @override
  final String? photo;

  @override
  String toString() {
    return 'UserResponse(id: $id, email: $email, provider: $provider, firstName: $firstName, lastName: $lastName, createdAt: $createdAt, updatedAt: $updatedAt, role: $role, status: $status, entity: $entity, socialId: $socialId, deletedAt: $deletedAt, photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.socialId, socialId) ||
                other.socialId == socialId) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      provider,
      firstName,
      lastName,
      createdAt,
      updatedAt,
      role,
      status,
      entity,
      socialId,
      deletedAt,
      photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserResponseCopyWith<_$_UserResponse> get copyWith =>
      __$$_UserResponseCopyWithImpl<_$_UserResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserResponseToJson(
      this,
    );
  }
}

abstract class _UserResponse implements UserResponse {
  factory _UserResponse(
      {required final int id,
      required final String email,
      required final String provider,
      required final String firstName,
      required final String lastName,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final Role role,
      required final Role status,
      required final String entity,
      final String? socialId,
      final DateTime? deletedAt,
      final String? photo}) = _$_UserResponse;

  factory _UserResponse.fromJson(Map<String, dynamic> json) =
      _$_UserResponse.fromJson;

  @override
  int get id;
  @override
  String get email;
  @override
  String get provider;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  Role get role;
  @override
  Role get status;
  @override
  String get entity;
  @override
  String? get socialId;
  @override
  DateTime? get deletedAt;
  @override
  String? get photo;
  @override
  @JsonKey(ignore: true)
  _$$_UserResponseCopyWith<_$_UserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Role _$RoleFromJson(Map<String, dynamic> json) {
  return _Role.fromJson(json);
}

/// @nodoc
mixin _$Role {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get entity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoleCopyWith<Role> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleCopyWith<$Res> {
  factory $RoleCopyWith(Role value, $Res Function(Role) then) =
      _$RoleCopyWithImpl<$Res, Role>;
  @useResult
  $Res call({int id, String name, String entity});
}

/// @nodoc
class _$RoleCopyWithImpl<$Res, $Val extends Role>
    implements $RoleCopyWith<$Res> {
  _$RoleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? entity = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoleCopyWith<$Res> implements $RoleCopyWith<$Res> {
  factory _$$_RoleCopyWith(_$_Role value, $Res Function(_$_Role) then) =
      __$$_RoleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String entity});
}

/// @nodoc
class __$$_RoleCopyWithImpl<$Res> extends _$RoleCopyWithImpl<$Res, _$_Role>
    implements _$$_RoleCopyWith<$Res> {
  __$$_RoleCopyWithImpl(_$_Role _value, $Res Function(_$_Role) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? entity = null,
  }) {
    return _then(_$_Role(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Role implements _Role {
  _$_Role({required this.id, required this.name, required this.entity});

  factory _$_Role.fromJson(Map<String, dynamic> json) => _$$_RoleFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String entity;

  @override
  String toString() {
    return 'Role(id: $id, name: $name, entity: $entity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Role &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, entity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoleCopyWith<_$_Role> get copyWith =>
      __$$_RoleCopyWithImpl<_$_Role>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoleToJson(
      this,
    );
  }
}

abstract class _Role implements Role {
  factory _Role(
      {required final int id,
      required final String name,
      required final String entity}) = _$_Role;

  factory _Role.fromJson(Map<String, dynamic> json) = _$_Role.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get entity;
  @override
  @JsonKey(ignore: true)
  _$$_RoleCopyWith<_$_Role> get copyWith => throw _privateConstructorUsedError;
}
