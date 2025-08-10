import 'package:json_annotation/json_annotation.dart';

part 'add_level_response.g.dart';

@JsonSerializable()
class AddLevelResponse {
  String? message;
  int? level;
  int? quiz;

  AddLevelResponse({
    this.message,
    this.level,
    this.quiz,
  });

  factory AddLevelResponse.fromJson(Map<String, dynamic> json) =>
      _$AddLevelResponseFromJson(json);
}
