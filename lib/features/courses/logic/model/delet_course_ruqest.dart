import 'package:json_annotation/json_annotation.dart';

part 'delet_course_ruqest.g.dart';

@JsonSerializable()
class DeletCourseRuqest {
  String? id;

  DeletCourseRuqest({required this.id});

  Map<String, dynamic> toJson() => _$DeletCourseRuqestToJson(this);
}