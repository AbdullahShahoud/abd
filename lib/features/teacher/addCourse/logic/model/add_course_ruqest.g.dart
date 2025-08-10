// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_course_ruqest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCourseRuqest _$AddCourseRuqestFromJson(Map<String, dynamic> json) =>
    AddCourseRuqest(
      teacher: (json['teacher'] as num?)?.toInt(),
      time: (json['time'] as num?)?.toInt(),
      type: json['type'] as String?,
      name: json['name'] as String?,
      nameTeacher: json['nameTeacher'] as String?,
      image: json['image'] as String?,
      descrip: json['descrip'] as String?,
      num_of_level: (json['num_of_level'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AddCourseRuqestToJson(AddCourseRuqest instance) =>
    <String, dynamic>{
      'type': instance.type,
      'image': instance.image,
      'nameTeacher': instance.nameTeacher,
      'descrip': instance.descrip,
      'name': instance.name,
      'teacher': instance.teacher,
      'num_of_level': instance.num_of_level,
      'time': instance.time,
    };
