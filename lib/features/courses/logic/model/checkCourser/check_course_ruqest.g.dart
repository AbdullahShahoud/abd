// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_course_ruqest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckCourseRuqest _$CheckCourseRuqestFromJson(Map<String, dynamic> json) =>
    CheckCourseRuqest(
      course: (json['course'] as num?)?.toInt(),
      student: (json['student'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CheckCourseRuqestToJson(CheckCourseRuqest instance) =>
    <String, dynamic>{
      'student': instance.student,
      'course': instance.course,
    };
