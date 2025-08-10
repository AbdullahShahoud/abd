// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_coures_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCourseResponse _$AddCourseResponseFromJson(Map<String, dynamic> json) =>
    AddCourseResponse(
      message: json['message'] as String?,
      course: (json['course'] as num?)?.toInt(),
      finals: (json['finals'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AddCourseResponseToJson(AddCourseResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'course': instance.course,
      'finals': instance.finals,
    };
