// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chang_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangePasswordRequest _$ChangePasswordRequestFromJson(
        Map<String, dynamic> json) =>
    ChangePasswordRequest(
      passwordOld: json['passwordOld'] as String?,
      passwordNew: json['passwordNew'] as String?,
    );

Map<String, dynamic> _$ChangePasswordRequestToJson(
        ChangePasswordRequest instance) =>
    <String, dynamic>{
      'passwordOld': instance.passwordOld,
      'passwordNew': instance.passwordNew,
    };
