import 'package:json_annotation/json_annotation.dart';

part 'book_response.g.dart';

@JsonSerializable()
class BookResponse {
  List<Book> bookResponse;

  BookResponse({required this.bookResponse});

  factory BookResponse.fromJson(Map<String, dynamic> json) =>
      _$BookResponseFromJson(json);
}

@JsonSerializable()
class Book {
  String name;
  String authr;
  String url;
  int id;
  String image;

  Book({required this.authr,required this.id,required this.name,required this.url,required this.image});

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}
