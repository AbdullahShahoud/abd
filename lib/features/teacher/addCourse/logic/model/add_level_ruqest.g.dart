// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_level_ruqest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddLevelRuqest _$AddLevelRuqestFromJson(Map<String, dynamic> json) =>
    AddLevelRuqest(
      name: json['name'] as String?,
      teacher: (json['teacher'] as num?)?.toInt(),
      course: (json['course'] as num?)?.toInt(),
      num_of_lesson: (json['num_of_lesson'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AddLevelRuqestToJson(AddLevelRuqest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'teacher': instance.teacher,
      'course': instance.course,
      'num_of_lesson': instance.num_of_lesson,
    };
