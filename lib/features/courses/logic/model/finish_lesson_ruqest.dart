import 'package:json_annotation/json_annotation.dart';

part 'finish_lesson_ruqest.g.dart';

@JsonSerializable()
class FinishLessonRuqest {
  String? courseId;
  String? lessonId;

  FinishLessonRuqest({required this.lessonId, required this.courseId});

  Map<String, dynamic> toJson() => _$FinishLessonRuqestToJson(this);
}
