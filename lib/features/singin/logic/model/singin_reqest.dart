import 'package:json_annotation/json_annotation.dart';

part 'singin_reqest.g.dart';

@JsonSerializable()
class SinginRequest {
  String? email;
  String? username;
  String? password;
  String? confirmPassword;
  String? account_type;
  SinginRequest(
      {required this.email,
      required this.username,
      required this.password,
      required this.confirmPassword,
      required this.account_type});
  Map<String, dynamic> toJson() => _$SinginRequestToJson(this);
  factory SinginRequest.fromJson(Map<String, dynamic> json) =>
      _$SinginRequestFromJson(json);
}
