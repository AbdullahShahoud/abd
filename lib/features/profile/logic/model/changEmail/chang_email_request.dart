import 'package:json_annotation/json_annotation.dart';

part 'chang_email_request.g.dart';

@JsonSerializable()
class ChangeEmailRequest {
  String? email;
  String? name;

  ChangeEmailRequest({required this.email, required this.name});

  Map<String, dynamic> toJson() => _$ChangeEmailRequestToJson(this);
}
