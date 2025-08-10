import 'package:json_annotation/json_annotation.dart';

part 'forget_password_ruqest.g.dart';

@JsonSerializable()
class FoargetPasswordRuqest {
  String? email;

  FoargetPasswordRuqest({required this.email});

  Map<String, dynamic> toJson() => _$FoargetPasswordRuqestToJson(this);
}