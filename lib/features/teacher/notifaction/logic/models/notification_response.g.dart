// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationResponse _$NotificationResponseFromJson(
        Map<String, dynamic> json) =>
    NotificationResponse(
      id: (json['id'] as num?)?.toInt(),
      message: json['message'] as String?,
      created_at: json['created_at'] as String?,
      is_read: json['is_read'] as bool?,
    );

Map<String, dynamic> _$NotificationResponseToJson(
        NotificationResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'created_at': instance.created_at,
      'is_read': instance.is_read,
    };
