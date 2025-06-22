// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'singin_reqest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SinginRequest _$SinginRequestFromJson(Map<String, dynamic> json) =>
    SinginRequest(
      email: json['email'] as String?,
      username: json['username'] as String?,
      password: json['password'] as String?,
      confirmPassword: json['confirmPassword'] as String?,
      account_type: json['account_type'] as String?,
    );

Map<String, dynamic> _$SinginRequestToJson(SinginRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'username': instance.username,
      'password': instance.password,
      'confirmPassword': instance.confirmPassword,
      'account_type': instance.account_type,
    };
