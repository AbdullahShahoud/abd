import 'package:json_annotation/json_annotation.dart';

part 'add_response_lession.g.dart';

@JsonSerializable()
class AddLessionResponse {
  String? message;

  AddLessionResponse({this.message});

  factory AddLessionResponse.fromJson(Map<String, dynamic> json) => _$AddLessionResponseFromJson(json);

}