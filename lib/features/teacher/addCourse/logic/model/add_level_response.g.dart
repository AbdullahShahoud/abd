// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_level_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddLevelResponse _$AddLevelResponseFromJson(Map<String, dynamic> json) =>
    AddLevelResponse(
      message: json['message'] as String?,
      level: (json['level'] as num?)?.toInt(),
      quiz: (json['quiz'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AddLevelResponseToJson(AddLevelResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'level': instance.level,
      'quiz': instance.quiz,
    };
