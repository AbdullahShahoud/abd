// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_question_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionAndResponse _$QuestionAndResponseFromJson(Map<String, dynamic> json) =>
    QuestionAndResponse(
      id: (json['id'] as num?)?.toInt(),
      student: (json['student'] as num?)?.toInt(),
      student_username: json['student_username'] as String?,
      course: (json['course'] as num?)?.toInt(),
      answer_text: json['answer_text'] as String?,
      answered: json['answered'] as bool?,
      lesson: (json['lesson'] as num?)?.toInt(),
      course_title: json['course_title'] as String?,
      question_text: json['question_text'] as String?,
      lesson_title: json['lesson_title'] as String?,
    );

Map<String, dynamic> _$QuestionAndResponseToJson(
        QuestionAndResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'student': instance.student,
      'course': instance.course,
      'student_username': instance.student_username,
      'lesson': instance.lesson,
      'course_title': instance.course_title,
      'lesson_title': instance.lesson_title,
      'question_text': instance.question_text,
      'answer_text': instance.answer_text,
      'answered': instance.answered,
    };
