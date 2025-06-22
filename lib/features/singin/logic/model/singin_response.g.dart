// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'singin_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SinginResponse _$SinginResponseFromJson(Map<String, dynamic> json) =>
    SinginResponse(
      token: json['token'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      account_type: json['account_type'] == null
          ? null
          : User.fromJson(json['account_type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SinginResponseToJson(SinginResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user,
      'account_type': instance.account_type,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      email: json['email'] as String?,
      username: json['username'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'email': instance.email,
      'username': instance.username,
      'id': instance.id,
    };
