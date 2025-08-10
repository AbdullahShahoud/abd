import 'package:json_annotation/json_annotation.dart';

part 'finish_lesson_ruqest.g.dart';

@JsonSerializable()
class FinishLessonRuqest {
  int? course;
  int? lesson;

  FinishLessonRuqest({required this.lesson, required this.course});

  Map<String, dynamic> toJson() => _$FinishLessonRuqestToJson(this);
}
