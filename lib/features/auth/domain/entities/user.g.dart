// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int,
      email: json['email'] as String,
      socialId: json['socialId'] as String?,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      photo: json['photo'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'socialId': instance.socialId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'photo': instance.photo,
    };
