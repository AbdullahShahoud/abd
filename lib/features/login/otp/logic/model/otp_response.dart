import 'package:json_annotation/json_annotation.dart';

part 'otp_response.g.dart';

@JsonSerializable()
class OtpResponseLogin {
  String? message;
  OtpResponseLogin({this.message,});

  factory OtpResponseLogin.fromJson(Map<String, dynamic> json) =>
      _$OtpResponseLoginFromJson(json);
}

