import 'package:json_annotation/json_annotation.dart';

part 'send_qaustion_request.g.dart';

@JsonSerializable()
class SendQautionsRuqest {
  String? question_text;
  int? course;
  int? lesson;

  SendQautionsRuqest(
      {required this.question_text, required this.course, required this.lesson});

  Map<String, dynamic> toJson() => _$SendQautionsRuqestToJson(this);
}
