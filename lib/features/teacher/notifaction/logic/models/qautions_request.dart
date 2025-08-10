import 'package:json_annotation/json_annotation.dart';

part 'qautions_request.g.dart';

@JsonSerializable()
class QuationsRequest {
  String? answer_text;

  QuationsRequest({required this.answer_text});

  Map<String, dynamic> toJson() => _$QuationsRequestToJson(this);
}