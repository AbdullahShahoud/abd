// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationAlertItem _$NotificationAlertItemFromJson(
        Map<String, dynamic> json) =>
    NotificationAlertItem(
      message: json['message'] as String?,
      created_at: json['created_at'] as String?,
      id: (json['id'] as num?)?.toInt(),
      is_read: json['is_read'] as bool?,
    );

Map<String, dynamic> _$NotificationAlertItemToJson(
        NotificationAlertItem instance) =>
    <String, dynamic>{
      'message': instance.message,
      'created_at': instance.created_at,
      'is_read': instance.is_read,
      'id': instance.id,
    };
