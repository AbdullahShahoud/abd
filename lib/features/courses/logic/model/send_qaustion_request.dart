import 'package:json_annotation/json_annotation.dart';

part 'send_qaustion_request.g.dart';

@JsonSerializable()
class SendQautionsRuqest {
  String? text;
  String? courseId;
  String? lessonId;

  SendQautionsRuqest(
      {required this.text, required this.courseId, required this.lessonId});

  Map<String, dynamic> toJson() => _$SendQautionsRuqestToJson(this);
}
