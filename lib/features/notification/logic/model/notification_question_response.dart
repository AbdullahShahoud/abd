import 'package:json_annotation/json_annotation.dart';

part 'notification_question_response.g.dart';

@JsonSerializable()
class QuestionAndResponse {
  int? id;
  int? student;
  int? course;
  String? student_username;
  int? lesson;
  String? course_title;
  String? lesson_title;
  String? question_text;
  String? answer_text;
  bool? answered;

  QuestionAndResponse(
      {this.id,
      this.student,
      this.student_username,
      this.course,
      this.answer_text,
      this.answered,
      this.lesson,
      this.course_title,
      this.question_text,
      this.lesson_title});

  factory QuestionAndResponse.fromJson(Map<String, dynamic> json) =>
      _$QuestionAndResponseFromJson(json);
}
