// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finish_test_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FinishTestResponse _$FinishTestResponseFromJson(Map<String, dynamic> json) =>
    FinishTestResponse(
      messsage: json['messsage'] as String?,
    )
      ..score = (json['score'] as num?)?.toInt()
      ..passed = json['passed'] as bool?;

Map<String, dynamic> _$FinishTestResponseToJson(FinishTestResponse instance) =>
    <String, dynamic>{
      'messsage': instance.messsage,
      'score': instance.score,
      'passed': instance.passed,
    };
