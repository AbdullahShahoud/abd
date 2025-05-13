// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'courses_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoursesResponse _$CoursesResponseFromJson(Map<String, dynamic> json) =>
    CoursesResponse(
      id: json['id'] as String?,
      name: json['name'] as String?,
      time: json['time'] as String?,
      descrip: json['descrip'] as String?,
      check: json['check'] as bool?,
      nameTeacher: json['nameTeacher'] as String?,
      type: json['type'] as String?,
      image: json['image'] as String?,
      finalTest: Test.fromJson(json['finalTest'] as Map<String, dynamic>),
      level: (json['level'] as List<dynamic>)
          .map((e) => Level.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CoursesResponseToJson(CoursesResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'nameTeacher': instance.nameTeacher,
      'type': instance.type,
      'time': instance.time,
      'descrip': instance.descrip,
      'finalTest': instance.finalTest,
      'check': instance.check,
      'level': instance.level,
    };

Level _$LevelFromJson(Map<String, dynamic> json) => Level(
      lessons: (json['lessons'] as List<dynamic>)
          .map((e) => Lesson.fromJson(e as Map<String, dynamic>))
          .toList(),
      check: json['check'] as bool,
      test: Test.fromJson(json['test'] as Map<String, dynamic>),
      name: json['name'] as String,
    );

Map<String, dynamic> _$LevelToJson(Level instance) => <String, dynamic>{
      'lessons': instance.lessons,
      'check': instance.check,
      'test': instance.test,
      'name': instance.name,
    };

Test _$TestFromJson(Map<String, dynamic> json) => Test(
      question: (json['question'] as List<dynamic>)
          .map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
      responseCorrect: (json['responseCorrect'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$TestToJson(Test instance) => <String, dynamic>{
      'question': instance.question,
      'responseCorrect': instance.responseCorrect,
    };

Question _$QuestionFromJson(Map<String, dynamic> json) => Question(
      question: json['question'] as String?,
      responseOne: json['responseOne'] as String?,
      responseTwo: json['responseTwo'] as String?,
      responseThree: json['responseThree'] as String?,
    );

Map<String, dynamic> _$QuestionToJson(Question instance) => <String, dynamic>{
      'question': instance.question,
      'responseOne': instance.responseOne,
      'responseTwo': instance.responseTwo,
      'responseThree': instance.responseThree,
    };

Lesson _$LessonFromJson(Map<String, dynamic> json) => Lesson(
      name: json['name'] as String?,
      video: json['video'] as String?,
      descrption: json['descrption'] as String?,
      check: json['check'] as bool?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$LessonToJson(Lesson instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'video': instance.video,
      'descrption': instance.descrption,
      'check': instance.check,
    };
