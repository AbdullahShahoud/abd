// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finish_lesson_ruqest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FinishLessonRuqest _$FinishLessonRuqestFromJson(Map<String, dynamic> json) =>
    FinishLessonRuqest(
      lesson: (json['lesson'] as num?)?.toInt(),
      course: (json['course'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FinishLessonRuqestToJson(FinishLessonRuqest instance) =>
    <String, dynamic>{
      'course': instance.course,
      'lesson': instance.lesson,
    };
