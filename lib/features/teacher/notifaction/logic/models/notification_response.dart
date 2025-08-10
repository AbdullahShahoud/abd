import 'package:json_annotation/json_annotation.dart';

part 'notification_response.g.dart';

@JsonSerializable()
class NotificationResponse {
  int? id;
  String? message;
  String? created_at;
  bool? is_read;

  NotificationResponse(
      {required this.id,
      required this.message,
      required this.created_at,
      required this.is_read});

  factory NotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationResponseFromJson(json);
}
