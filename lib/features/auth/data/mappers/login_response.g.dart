// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResponse _$$_LoginResponseFromJson(Map<String, dynamic> json) =>
    _$_LoginResponse(
      refreshToken: json['refreshToken'] as String,
      token: json['token'] as String,
      tokenExpires: json['tokenExpires'] as int,
      user: UserResponse.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LoginResponseToJson(_$_LoginResponse instance) =>
    <String, dynamic>{
      'refreshToken': instance.refreshToken,
      'token': instance.token,
      'tokenExpires': instance.tokenExpires,
      'user': instance.user,
    };

_$_UserResponse _$$_UserResponseFromJson(Map<String, dynamic> json) =>
    _$_UserResponse(
      id: json['id'] as int,
      email: json['email'] as String,
      provider: json['provider'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      role: Role.fromJson(json['role'] as Map<String, dynamic>),
      status: Role.fromJson(json['status'] as Map<String, dynamic>),
      entity: json['entity'] as String,
      socialId: json['socialId'] as String?,
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      photo: json['photo'] as String?,
    );

Map<String, dynamic> _$$_UserResponseToJson(_$_UserResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'provider': instance.provider,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'role': instance.role,
      'status': instance.status,
      'entity': instance.entity,
      'socialId': instance.socialId,
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'photo': instance.photo,
    };

_$_Role _$$_RoleFromJson(Map<String, dynamic> json) => _$_Role(
      id: json['id'] as int,
      name: json['name'] as String,
      entity: json['entity'] as String,
    );

Map<String, dynamic> _$$_RoleToJson(_$_Role instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'entity': instance.entity,
    };
