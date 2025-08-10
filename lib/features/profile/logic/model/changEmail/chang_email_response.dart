import 'package:json_annotation/json_annotation.dart';

part 'chang_email_response.g.dart';

@JsonSerializable()
class ChangeEmailResponse {
  String? email;
  String? username;

  ChangeEmailResponse({this.email, this.username});

  factory ChangeEmailResponse.fromJson(Map<String, dynamic> json) =>
      _$ChangeEmailResponseFromJson(json);
}
