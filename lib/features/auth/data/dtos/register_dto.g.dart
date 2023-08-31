// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterDto _$$_RegisterDtoFromJson(Map<String, dynamic> json) =>
    _$_RegisterDto(
      email: json['email'] as String,
      username: json['username'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_RegisterDtoToJson(_$_RegisterDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'username': instance.username,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'password': instance.password,
    };
