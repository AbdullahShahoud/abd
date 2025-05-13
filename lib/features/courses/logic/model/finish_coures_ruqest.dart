import 'package:json_annotation/json_annotation.dart';

part 'finish_coures_ruqest.g.dart';

@JsonSerializable()
class FinishCourseRuqest {
  String? courseId;

  FinishCourseRuqest({required this.courseId});

  Map<String, dynamic> toJson() => _$FinishCourseRuqestToJson(this);
}
