import 'package:json_annotation/json_annotation.dart';

part 'add_course_ruqest.g.dart';

@JsonSerializable()
class AddCourseRuqest {
  String? type;
  String? image;
  String? nameTeacher;
  String? descrip;
  String? name;
  int? teacher;
  int? num_of_level;
  int? time;

  AddCourseRuqest({
    required this.teacher,
    required this.time,
    required this.type,
    required this.name,
    required this.nameTeacher,
    required this.image,
    required this.descrip,
    required this.num_of_level,
  });

  Map<String, dynamic> toJson() => _$AddCourseRuqestToJson(this);
}
