import 'package:json_annotation/json_annotation.dart';

part 'delet_user_ruqest.g.dart';

@JsonSerializable()
class DeletUserRuqest {
  String? id;

  DeletUserRuqest( this.id);

  Map<String, dynamic> toJson() => _$DeletUserRuqestToJson(this);
}