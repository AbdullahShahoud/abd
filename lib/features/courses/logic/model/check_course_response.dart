import 'package:json_annotation/json_annotation.dart';

part 'check_course_response.g.dart';

@JsonSerializable()
class CheckCourseResponse {
  String? message;

  CheckCourseResponse({this.message});

  factory CheckCourseResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckCourseResponseFromJson(json);
}
