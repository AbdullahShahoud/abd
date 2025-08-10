// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_information_respones.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInformation _$UserInformationFromJson(Map<String, dynamic> json) =>
    UserInformation(
      username: json['username'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$UserInformationToJson(UserInformation instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
    };
