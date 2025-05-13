import 'package:json_annotation/json_annotation.dart';

part 'send_qaustion_response.g.dart';

@JsonSerializable()
class SendQautionReesponse {
  String? massage;

  SendQautionReesponse({this.massage});

  factory SendQautionReesponse.fromJson(Map<String, dynamic> json) =>
      _$SendQautionReesponseFromJson(json);
}
