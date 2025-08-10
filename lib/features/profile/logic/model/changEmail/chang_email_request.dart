import 'package:json_annotation/json_annotation.dart';

part 'chang_email_request.g.dart';

@JsonSerializable()
class ChangeEmailRequest {
  String? email;
  String? username;

  ChangeEmailRequest({required this.email, required this.username});

  Map<String, dynamic> toJson() => _$ChangeEmailRequestToJson(this);
}
