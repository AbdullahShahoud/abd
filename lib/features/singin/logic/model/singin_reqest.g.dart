// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'singin_reqest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SinginRequest _$SinginRequestFromJson(Map<String, dynamic> json) =>
    SinginRequest(
      email: json['email'] as String?,
      name: json['name'] as String?,
      password: json['password'] as String?,
      confimPassword: json['confimPassword'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$SinginRequestToJson(SinginRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'password': instance.password,
      'confimPassword': instance.confimPassword,
      'type': instance.type,
    };
