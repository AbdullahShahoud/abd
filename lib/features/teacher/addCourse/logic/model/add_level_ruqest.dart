import 'package:json_annotation/json_annotation.dart';

part 'add_level_ruqest.g.dart';

@JsonSerializable()
class AddLevelRuqest {
  String? name;
  int? teacher;
  int? course;
  int? num_of_lesson;

  AddLevelRuqest({
    required this.name,
    required this.teacher,
    required this.course,
    required this.num_of_lesson,
  });

  Map<String, dynamic> toJson() => _$AddLevelRuqestToJson(this);
}
