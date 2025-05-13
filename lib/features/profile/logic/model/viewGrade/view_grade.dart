import 'package:json_annotation/json_annotation.dart';

part 'view_grade.g.dart';

@JsonSerializable()
class GradeRespons {
  List<String> grades;

  GradeRespons(this.grades);

  factory GradeRespons.fromJson(Map<String, dynamic> json) =>
      _$GradeResponsFromJson(json);
}
