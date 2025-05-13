import 'package:json_annotation/json_annotation.dart';

part 'chang_email_response.g.dart';

@JsonSerializable()
class ChangeEmailResponse {
  String? email;
  String? name;

  ChangeEmailResponse({this.email, this.name});

  factory ChangeEmailResponse.fromJson(Map<String, dynamic> json) =>
      _$ChangeEmailResponseFromJson(json);
}
