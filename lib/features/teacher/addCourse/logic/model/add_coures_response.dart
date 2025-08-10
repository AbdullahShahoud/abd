import 'package:json_annotation/json_annotation.dart';

part 'add_coures_response.g.dart';

@JsonSerializable()
class AddCourseResponse {
  String? message;
  int? course;
  int? finals;

  AddCourseResponse({
    this.message,
    this.course,
    this.finals,
  });

  factory AddCourseResponse.fromJson(Map<String, dynamic> json) =>
      _$AddCourseResponseFromJson(json);
}
