import 'package:json_annotation/json_annotation.dart';

part 'delet_course_response.g.dart';

@JsonSerializable()
class DeletCourseResponse {
  String? massege;

  DeletCourseResponse({this.massege});

  factory DeletCourseResponse.fromJson(Map<String, dynamic> json) => _$DeletCourseResponseFromJson(json);

}