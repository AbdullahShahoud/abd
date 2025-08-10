// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_qaustion_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendQautionsRuqest _$SendQautionsRuqestFromJson(Map<String, dynamic> json) =>
    SendQautionsRuqest(
      question_text: json['question_text'] as String?,
      course: (json['course'] as num?)?.toInt(),
      lesson: (json['lesson'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SendQautionsRuqestToJson(SendQautionsRuqest instance) =>
    <String, dynamic>{
      'question_text': instance.question_text,
      'course': instance.course,
      'lesson': instance.lesson,
    };
