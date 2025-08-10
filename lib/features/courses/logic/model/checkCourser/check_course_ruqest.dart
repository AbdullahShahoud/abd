import 'package:json_annotation/json_annotation.dart';

part 'check_course_ruqest.g.dart';

@JsonSerializable()
class CheckCourseRuqest {
  int? student;
  int? course;
  CheckCourseRuqest({
    required this.course,required this.student,
  });

  Map<String, dynamic> toJson() => _$CheckCourseRuqestToJson(this);
}
