import 'package:json_annotation/json_annotation.dart';

part 'add_test_ruqest.g.dart';

@JsonSerializable()
class AddTestRuqest {
  int? level;
  int? teacher;
  int? duration_minutes;
  int? max_questions;
  bool? is_final_exam;

  AddTestRuqest({
    required this.level,
    required this.teacher,
    required this.duration_minutes,
    required this.max_questions,
    required this.is_final_exam,
  });

  Map<String, dynamic> toJson() => _$AddTestRuqestToJson(this);
}
