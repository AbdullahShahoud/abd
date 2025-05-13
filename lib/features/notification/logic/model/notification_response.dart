import 'package:json_annotation/json_annotation.dart';

part 'notification_response.g.dart';

@JsonSerializable()
class NotificationResponse {
  List<NotificationItem> notificatio;
  List<QuestionAndResponse> question;

  NotificationResponse({required this.notificatio, required this.question});

  factory NotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationResponseFromJson(json);
}

@JsonSerializable()
class NotificationItem {
  String? date;
  String? text;

  NotificationItem({this.date, this.text});

  factory NotificationItem.fromJson(Map<String, dynamic> json) =>
      _$NotificationItemFromJson(json);
}

@JsonSerializable()
class QuestionAndResponse {
  String? date;
  String? question;
  String? response;

  QuestionAndResponse({this.date, this.question, this.response});

  factory QuestionAndResponse.fromJson(Map<String, dynamic> json) =>
      _$QuestionAndResponseFromJson(json);
}
