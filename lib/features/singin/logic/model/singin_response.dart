import 'package:json_annotation/json_annotation.dart';

part 'singin_response.g.dart';

@JsonSerializable()
class SinginResponse {
  String? token;
  User? user;
  SinginResponse({this.token, this.user});

  factory SinginResponse.fromJson(Map<String, dynamic> json) =>
      _$SinginResponseFromJson(json);
}
@JsonSerializable()
class User {
  String? email;
  String? name;
  String? type;
  User({this.email, this.name, this.type});
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
