import 'package:json_annotation/json_annotation.dart';

part 'courses_response.g.dart';

@JsonSerializable()
class CoursesResponse {
  int? id;
  String? name;
  String? image;
  String? nameTeacher;
  String? type;
  int? time;
  String? descrip;
  List<Level> level;

  CoursesResponse({
    this.id,
    this.name,
    this.time,
    this.descrip,
    this.nameTeacher,
    this.type,
    this.image,
    required this.level,
  });

  factory CoursesResponse.fromJson(Map<String, dynamic> json) =>
      _$CoursesResponseFromJson(json);
}

@JsonSerializable()
class Level {
  String name;
  Level({required this.name});

  factory Level.fromJson(Map<String, dynamic> json) => _$LevelFromJson(json);
}
