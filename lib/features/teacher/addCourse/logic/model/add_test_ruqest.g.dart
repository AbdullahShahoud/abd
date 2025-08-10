// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_test_ruqest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddTestRuqest _$AddTestRuqestFromJson(Map<String, dynamic> json) =>
    AddTestRuqest(
      level: (json['level'] as num?)?.toInt(),
      teacher: (json['teacher'] as num?)?.toInt(),
      duration_minutes: (json['duration_minutes'] as num?)?.toInt(),
      max_questions: (json['max_questions'] as num?)?.toInt(),
      is_final_exam: json['is_final_exam'] as bool?,
    );

Map<String, dynamic> _$AddTestRuqestToJson(AddTestRuqest instance) =>
    <String, dynamic>{
      'level': instance.level,
      'teacher': instance.teacher,
      'duration_minutes': instance.duration_minutes,
      'max_questions': instance.max_questions,
      'is_final_exam': instance.is_final_exam,
    };
