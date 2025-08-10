import 'package:json_annotation/json_annotation.dart';

part 'add_quations_response.g.dart';

@JsonSerializable()
class AddQuationResponse {
  String? message;

  AddQuationResponse({this.message});

  factory AddQuationResponse.fromJson(Map<String, dynamic> json) => _$AddQuationResponseFromJson(json);

}