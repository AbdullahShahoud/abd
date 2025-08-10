import 'package:json_annotation/json_annotation.dart';

part 'forget_password_response.g.dart';

@JsonSerializable()
class ForgetPasswordResponse {
  String? status;

  ForgetPasswordResponse({this.status});

  factory ForgetPasswordResponse.fromJson(Map<String, dynamic> json) => _$ForgetPasswordResponseFromJson(json);

}