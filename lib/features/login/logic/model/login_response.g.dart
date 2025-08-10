// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      token: json['token'] as String?,
      account_type: json['account_type'] as String?,
      email_verified: json['email_verified'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'account_type': instance.account_type,
      'email_verified': instance.email_verified,
      'token': instance.token,
      'message': instance.message,
    };
