import 'package:json_annotation/json_annotation.dart';

part 'add_lession_ruqest.g.dart';

@JsonSerializable()
class AddLessionRuqest {
  String? name;
  String? description;
  int? course;
  String? video;
  int? level;
  int? teacher;

  AddLessionRuqest({
    required this.name,
    required this.teacher,
    required this.description,
    required this.course,
    required this.video,
    required this.level,
  });

  Map<String, dynamic> toJson() => _$AddLessionRuqestToJson(this);
}
