// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'courses_me_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoursesMeResponse _$CoursesMeResponseFromJson(Map<String, dynamic> json) =>
    CoursesMeResponse(
      id: json['id'] as String?,
      name: json['name'] as String?,
      time: json['time'] as String?,
      type: json['type'] as String?,
      check: json['check'] as bool?,
      image: json['image'] as String?,
      nameTeacher: json['nameTeacher'] as String?,
      descrip: json['descrip'] as String?,
      finshed: json['finshed'] as bool,
      level: (json['level'] as List<dynamic>)
          .map((e) => LevelMe.fromJson(e as Map<String, dynamic>))
          .toList(),
      finalTest: TestMe.fromJson(json['finalTest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CoursesMeResponseToJson(CoursesMeResponse instance) =>
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
      'finshed': instance.finshed,
    };

LevelMe _$LevelMeFromJson(Map<String, dynamic> json) => LevelMe(
      lessons: (json['lessons'] as List<dynamic>)
          .map((e) => LessonMe.fromJson(e as Map<String, dynamic>))
          .toList(),
      check: json['check'] as bool,
      id: json['id'] as String,
      finished: json['finished'] as bool,
      test: TestMe.fromJson(json['test'] as Map<String, dynamic>),
      name: json['name'] as String,
    );

Map<String, dynamic> _$LevelMeToJson(LevelMe instance) => <String, dynamic>{
      'lessons': instance.lessons,
      'check': instance.check,
      'id': instance.id,
      'test': instance.test,
      'name': instance.name,
      'finished': instance.finished,
    };

TestMe _$TestMeFromJson(Map<String, dynamic> json) => TestMe(
      question: (json['question'] as List<dynamic>)
          .map((e) => QuestionMe.fromJson(e as Map<String, dynamic>))
          .toList(),
      finish: json['finish'] as bool,
      responseCorrect: (json['responseCorrect'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$TestMeToJson(TestMe instance) => <String, dynamic>{
      'question': instance.question,
      'responseCorrect': instance.responseCorrect,
      'finish': instance.finish,
    };

QuestionMe _$QuestionMeFromJson(Map<String, dynamic> json) => QuestionMe(
      question: json['question'] as String?,
      responseOne: json['responseOne'] as String?,
      responseTwo: json['responseTwo'] as String?,
      responseThree: json['responseThree'] as String?,
    );

Map<String, dynamic> _$QuestionMeToJson(QuestionMe instance) =>
    <String, dynamic>{
      'question': instance.question,
      'responseOne': instance.responseOne,
      'responseTwo': instance.responseTwo,
      'responseThree': instance.responseThree,
    };

LessonMe _$LessonMeFromJson(Map<String, dynamic> json) => LessonMe(
      name: json['name'] as String?,
      video: json['video'] as String?,
      id: json['id'] as String?,
      descrption: json['descrption'] as String?,
      check: json['check'] as bool?,
      finished: json['finished'] as bool,
    );

Map<String, dynamic> _$LessonMeToJson(LessonMe instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'video': instance.video,
      'descrption': instance.descrption,
      'check': instance.check,
      'finished': instance.finished,
    };
