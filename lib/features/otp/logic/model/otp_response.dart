import 'package:json_annotation/json_annotation.dart';

part 'otp_response.g.dart';

@JsonSerializable()
class OtpResponse {
  String? message;
  String? email_verified;
  User? user;
  OtpResponse({this.message, this.email_verified, this.user});

  factory OtpResponse.fromJson(Map<String, dynamic> json) =>
      _$OtpResponseFromJson(json);
}

@JsonSerializable()
class User {
  String? email;
  String? username;
  String? id;
  User({this.email, this.username, this.id});
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
