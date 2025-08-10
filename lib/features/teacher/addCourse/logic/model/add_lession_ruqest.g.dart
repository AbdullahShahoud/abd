// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_lession_ruqest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddLessionRuqest _$AddLessionRuqestFromJson(Map<String, dynamic> json) =>
    AddLessionRuqest(
      name: json['name'] as String?,
      teacher: (json['teacher'] as num?)?.toInt(),
      description: json['description'] as String?,
      course: (json['course'] as num?)?.toInt(),
      video: json['video'] as String?,
      level: (json['level'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AddLessionRuqestToJson(AddLessionRuqest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'course': instance.course,
      'video': instance.video,
      'level': instance.level,
      'teacher': instance.teacher,
    };
