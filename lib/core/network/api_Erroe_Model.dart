import 'package:json_annotation/json_annotation.dart';
part 'api_Erroe_Model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  String? message;
  int? code;
  ApiErrorModel({required this.message, required this.code});
  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}
