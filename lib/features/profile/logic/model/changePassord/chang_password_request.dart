import 'package:json_annotation/json_annotation.dart';

part 'chang_password_request.g.dart';

@JsonSerializable()
class ChangePasswordRequest {
  String? passwordOld;
  String? passwordNew;

  ChangePasswordRequest({required this.passwordOld, required this.passwordNew});

  Map<String, dynamic> toJson() => _$ChangePasswordRequestToJson(this);
}
