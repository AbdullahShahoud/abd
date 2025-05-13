import 'package:json_annotation/json_annotation.dart';

part 'courses_me_response.g.dart';

@JsonSerializable()
class CoursesMeResponse {
  String? id;
  String? name;
  String? image;
  String? nameTeacher;
  String? type;
  String? time;
  String? descrip;
  TestMe finalTest;
  bool? check;
  List<LevelMe> level;
  bool finshed;
  CoursesMeResponse(
      {this.id,
      this.name,
      this.time,
      this.type,
      this.check,
      this.image,
      this.nameTeacher,
      this.descrip,
      required this.finshed,
      required this.level,
      required this.finalTest});

  factory CoursesMeResponse.fromJson(Map<String, dynamic> json) =>
      _$CoursesMeResponseFromJson(json);
}

@JsonSerializable()
class LevelMe {
  List<LessonMe> lessons;
  bool check;
  String id;
  TestMe test;
  String name;
  bool finished;
  LevelMe({
    required this.lessons,
    required this.check,
    required this.id,
    required this.finished,
    required this.test,
    required this.name,
  });

  factory LevelMe.fromJson(Map<String, dynamic> json) =>
      _$LevelMeFromJson(json);
}

@JsonSerializable()
class TestMe {
  List<QuestionMe> question;
  List<String> responseCorrect;
  bool finish;
  TestMe({
    required this.question,
    required this.finish,
    required this.responseCorrect,
  });

  factory TestMe.fromJson(Map<String, dynamic> json) => _$TestMeFromJson(json);
}

@JsonSerializable()
class QuestionMe {
  String? question;
  String? responseOne;
  String? responseTwo;
  String? responseThree;

  QuestionMe({
    required this.question,
    required this.responseOne,
    required this.responseTwo,
    required this.responseThree,
  });
  factory QuestionMe.fromJson(Map<String, dynamic> json) =>
      _$QuestionMeFromJson(json);
}

@JsonSerializable()
class LessonMe {
  String? name;
  String? id;
  String? video;
  String? descrption;
  bool? check;
  bool finished;
  LessonMe(
      {this.name,
      this.video,
      this.id,
      this.descrption,
      this.check,
      required this.finished});

  factory LessonMe.fromJson(Map<String, dynamic> json) =>
      _$LessonMeFromJson(json);
}
