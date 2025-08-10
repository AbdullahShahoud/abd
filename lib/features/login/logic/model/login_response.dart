import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  String? account_type;
  bool? email_verified;
  String? token;
  String? message;
  LoginResponse(
      {this.token, this.account_type, this.email_verified, this.message});
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
