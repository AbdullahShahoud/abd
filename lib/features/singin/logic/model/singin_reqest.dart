import 'package:json_annotation/json_annotation.dart';

part 'singin_reqest.g.dart';

@JsonSerializable()
class SinginRequest {
  String? email;
  String? name;
  String? password;
  String? confimPassword;
  String? type;
  SinginRequest(
      {required this.email,
      required this.name,
      required this.password,
      required this.confimPassword,
      required this.type});
  Map<String, dynamic> toJson() => _$SinginRequestToJson(this);
}
