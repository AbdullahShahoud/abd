import 'package:json_annotation/json_annotation.dart';

part 'check_course_ruqest.g.dart';

@JsonSerializable()
class CheckCourseRuqest {
  String? courseId;
  CheckCourseRuqest({
    required this.courseId,
  });

  Map<String, dynamic> toJson() => _$CheckCourseRuqestToJson(this);
}
