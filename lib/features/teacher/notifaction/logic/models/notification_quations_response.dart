import 'package:json_annotation/json_annotation.dart';

part 'notification_quations_response.g.dart';

@JsonSerializable()
class NotificationQuationsResponse {
  int? id;
  int? course;
  String? course_title;
  int? lesson;
  String? lesson_title;
  String? question_text;
  String? answer_text;
  bool? answered;

  NotificationQuationsResponse(
      {this.id,
      this.course,
      this.course_title,
      this.lesson,
      this.lesson_title,
      this.question_text,
      this.answered,
      this.answer_text});

  factory NotificationQuationsResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationQuationsResponseFromJson(json);
}
