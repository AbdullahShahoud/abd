// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationResponse _$NotificationResponseFromJson(
        Map<String, dynamic> json) =>
    NotificationResponse(
      notificatio: (json['notificatio'] as List<dynamic>)
          .map((e) => NotificationItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      question: (json['question'] as List<dynamic>)
          .map((e) => QuestionAndResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NotificationResponseToJson(
        NotificationResponse instance) =>
    <String, dynamic>{
      'notificatio': instance.notificatio,
      'question': instance.question,
    };

NotificationItem _$NotificationItemFromJson(Map<String, dynamic> json) =>
    NotificationItem(
      date: json['date'] as String?,
      text: json['text'] as String?,
    );

Map<String, dynamic> _$NotificationItemToJson(NotificationItem instance) =>
    <String, dynamic>{
      'date': instance.date,
      'text': instance.text,
    };

QuestionAndResponse _$QuestionAndResponseFromJson(Map<String, dynamic> json) =>
    QuestionAndResponse(
      date: json['date'] as String?,
      question: json['question'] as String?,
      response: json['response'] as String?,
    );

Map<String, dynamic> _$QuestionAndResponseToJson(
        QuestionAndResponse instance) =>
    <String, dynamic>{
      'date': instance.date,
      'question': instance.question,
      'response': instance.response,
    };
