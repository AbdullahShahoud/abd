import 'package:json_annotation/json_annotation.dart';

part 'chang_password_request.g.dart';

@JsonSerializable()
class ChangePasswordRequest {
  String? old_password;
  String? new_password;

  ChangePasswordRequest(
      {required this.old_password, required this.new_password});

  Map<String, dynamic> toJson() => _$ChangePasswordRequestToJson(this);
}
