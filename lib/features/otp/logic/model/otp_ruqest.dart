import 'package:json_annotation/json_annotation.dart';

part 'otp_ruqest.g.dart';

@JsonSerializable()
class OtpRuqest {
  String? otp_code;

  OtpRuqest({
    required this.otp_code,
  });

  Map<String, dynamic> toJson() => _$OtpRuqestToJson(this);
}
