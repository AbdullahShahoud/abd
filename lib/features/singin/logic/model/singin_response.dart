import 'package:json_annotation/json_annotation.dart';

part 'singin_response.g.dart';

@JsonSerializable()
class SinginResponse {
  String? token;
  User? user;
  User? account_type;
  SinginResponse({this.token, this.user,this.account_type});

  factory SinginResponse.fromJson(Map<String, dynamic> json) =>
      _$SinginResponseFromJson(json);
}
@JsonSerializable()
class User {
  String? email;
  String? username;
  String? id;
  User({this.email, this.username, this.id});
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
