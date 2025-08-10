import 'package:json_annotation/json_annotation.dart';

part 'book_response.g.dart';

@JsonSerializable()
class Book {
  String title;
  String author;
  String link;
  int id;
  String image;

  Book({
    required this.author,
    required this.id,
    required this.title,
    required this.link,
    required this.image,
  });

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}
