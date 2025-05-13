import 'package:json_annotation/json_annotation.dart';

part 'delet_user_response.g.dart';

@JsonSerializable()
class UserDeletResponse {
  String? message;

  UserDeletResponse({this.message});

  factory UserDeletResponse.fromJson(Map<String, dynamic> json) => _$UserDeletResponseFromJson(json);

}