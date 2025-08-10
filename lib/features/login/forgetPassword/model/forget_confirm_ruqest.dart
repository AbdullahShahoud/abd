import 'package:json_annotation/json_annotation.dart';

part 'forget_confirm_ruqest.g.dart';

@JsonSerializable()
class ForgatePasswordConfirmRquest {
  String? token;
  String? password;

  ForgatePasswordConfirmRquest({required this.token, required this.password});

  Map<String, dynamic> toJson() => _$ForgatePasswordConfirmRquestToJson(this);
}