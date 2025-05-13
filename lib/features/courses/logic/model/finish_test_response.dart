import 'package:json_annotation/json_annotation.dart';

part 'finish_test_response.g.dart';

@JsonSerializable()
class FinishTestResponse {
  String? messsage;
 

  FinishTestResponse({this.messsage});

  factory FinishTestResponse.fromJson(Map<String, dynamic> json) =>
      _$FinishTestResponseFromJson(json);
}
