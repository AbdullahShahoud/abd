import 'package:json_annotation/json_annotation.dart';

part 'courses_response.g.dart';

@JsonSerializable()
class CoursesResponse {
  String? id;
  String? name;
  String? image;
  String? nameTeacher;
  String? type;
  String? time;
  String? descrip;
  Test finalTest;
  bool? check;
  List<Level> level;

  CoursesResponse({
    this.id,
    this.name,
    this.time,
    this.descrip,
    this.check,
    this.nameTeacher,
    this.type,
    this.image,
    required this.finalTest,
    required this.level,
  });

  factory CoursesResponse.fromJson(Map<String, dynamic> json) =>
      _$CoursesResponseFromJson(json);
}

@JsonSerializable()
class Level {
  List<Lesson> lessons;
  bool check;
  Test test;
  String name;
  Level(
      {required this.lessons,
      required this.check,
      required this.test,
      required this.name});

  factory Level.fromJson(Map<String, dynamic> json) => _$LevelFromJson(json);
}

@JsonSerializable()
class Test {
  List<Question> question;
  List<String> responseCorrect;

  Test({required this.question, required this.responseCorrect});

  factory Test.fromJson(Map<String, dynamic> json) => _$TestFromJson(json);
}

@JsonSerializable()
class Question {
  String? question;
  String? responseOne;
  String? responseTwo;
  String? responseThree;

  Question({
    required this.question,
    required this.responseOne,
    required this.responseTwo,
    required this.responseThree,
  });

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}

@JsonSerializable()
class Lesson {
  String? name;
  String? id;
  String? video;
  String? descrption;
  bool? check;

  Lesson({this.name, this.video, this.descrption, this.check, this.id});

  factory Lesson.fromJson(Map<String, dynamic> json) => _$LessonFromJson(json);
}
