import 'package:json_annotation/json_annotation.dart';

part 'notification_response.g.dart';

@JsonSerializable()
class NotificationAlertItem {
  String? message;
  String? created_at;
  bool? is_read;
  int? id;

  NotificationAlertItem({this.message, this.created_at, this.id, this.is_read});

  factory NotificationAlertItem.fromJson(Map<String, dynamic> json) =>
      _$NotificationAlertItemFromJson(json);
}
