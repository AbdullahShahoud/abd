// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'courses_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoursesResponse _$CoursesResponseFromJson(Map<String, dynamic> json) =>
    CoursesResponse(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      time: (json['time'] as num?)?.toInt(),
      descrip: json['descrip'] as String?,
      nameTeacher: json['nameTeacher'] as String?,
      type: json['type'] as String?,
      image: json['image'] as String?,
      level: (json['level'] as List<dynamic>)
          .map((e) => Level.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CoursesResponseToJson(CoursesResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'nameTeacher': instance.nameTeacher,
      'type': instance.type,
      'time': instance.time,
      'descrip': instance.descrip,
      'level': instance.level,
    };

Level _$LevelFromJson(Map<String, dynamic> json) => Level(
      name: json['name'] as String,
    );

Map<String, dynamic> _$LevelToJson(Level instance) => <String, dynamic>{
      'name': instance.name,
    };
