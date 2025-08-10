import 'package:json_annotation/json_annotation.dart';

part 'view_information_respones.g.dart';

@JsonSerializable()
class UserInformation {
  String? username;
  String? email;

  UserInformation({this.username, this.email});

  factory UserInformation.fromJson(Map<String, dynamic> json) =>
      _$UserInformationFromJson(json);
}
