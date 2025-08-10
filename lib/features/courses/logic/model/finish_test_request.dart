import 'package:json_annotation/json_annotation.dart';

part 'finish_test_request.g.dart';

@JsonSerializable()
class FinishedTestRuqest {
  String? courseId;
  String? levelId;
  String? dagre;

  FinishedTestRuqest(
      {required this.courseId, required this.levelId, required this.dagre});

  Map<String, dynamic> toJson() => _$FinishedTestRuqestToJson(this);
}
