import 'package:json_annotation/json_annotation.dart';

part 'finish_course_response.g.dart';

@JsonSerializable()
class FinishCourseResponse {
  String? message;

  FinishCourseResponse({required this.message});

  factory FinishCourseResponse.fromJson(Map<String, dynamic> json) =>
      _$FinishCourseResponseFromJson(json);
}
