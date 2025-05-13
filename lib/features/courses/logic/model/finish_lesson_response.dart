import 'package:json_annotation/json_annotation.dart';

part 'finish_lesson_response.g.dart';

@JsonSerializable()
class FinishLessonResponse {
  String? message;

  FinishLessonResponse({
    this.message,
  });

  factory FinishLessonResponse.fromJson(Map<String, dynamic> json) =>
      _$FinishLessonResponseFromJson(json);
}
