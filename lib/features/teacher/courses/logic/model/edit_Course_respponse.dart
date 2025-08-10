import 'package:json_annotation/json_annotation.dart';

part 'edit_Course_respponse.g.dart';

@JsonSerializable()
class CourseResponse {
  String? message;

  CourseResponse({this.message});

  factory CourseResponse.fromJson(Map<String, dynamic> json) =>
      _$CourseResponseFromJson(json);
}
