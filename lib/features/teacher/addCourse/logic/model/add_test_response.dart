import 'package:json_annotation/json_annotation.dart';

part 'add_test_response.g.dart';

@JsonSerializable()
class AddTestResponse {
  String? message;

  AddTestResponse({this.message});

  factory AddTestResponse.fromJson(Map<String, dynamic> json) => _$AddTestResponseFromJson(json);

}