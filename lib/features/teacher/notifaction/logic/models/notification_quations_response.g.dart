// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_quations_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationQuationsResponse _$NotificationQuationsResponseFromJson(
        Map<String, dynamic> json) =>
    NotificationQuationsResponse(
      id: (json['id'] as num?)?.toInt(),
      course: (json['course'] as num?)?.toInt(),
      course_title: json['course_title'] as String?,
      lesson: (json['lesson'] as num?)?.toInt(),
      lesson_title: json['lesson_title'] as String?,
      question_text: json['question_text'] as String?,
      answered: json['answered'] as bool?,
      answer_text: json['answer_text'] as String?,
    );

Map<String, dynamic> _$NotificationQuationsResponseToJson(
        NotificationQuationsResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'course': instance.course,
      'course_title': instance.course_title,
      'lesson': instance.lesson,
      'lesson_title': instance.lesson_title,
      'question_text': instance.question_text,
      'answer_text': instance.answer_text,
      'answered': instance.answered,
    };
