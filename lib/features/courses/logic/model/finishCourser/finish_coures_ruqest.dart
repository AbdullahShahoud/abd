import 'package:json_annotation/json_annotation.dart';

part 'finish_coures_ruqest.g.dart';

@JsonSerializable()
class FinishCourseRuqest {
  int? course_id;

  FinishCourseRuqest({required this.course_id});

  Map<String, dynamic> toJson() => _$FinishCourseRuqestToJson(this);
}
