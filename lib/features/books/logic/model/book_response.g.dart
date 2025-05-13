// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookResponse _$BookResponseFromJson(Map<String, dynamic> json) => BookResponse(
      bookResponse: (json['bookResponse'] as List<dynamic>)
          .map((e) => Book.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BookResponseToJson(BookResponse instance) =>
    <String, dynamic>{
      'bookResponse': instance.bookResponse,
    };

Book _$BookFromJson(Map<String, dynamic> json) => Book(
      authr: json['authr'] as String,
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      url: json['url'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$BookToJson(Book instance) => <String, dynamic>{
      'name': instance.name,
      'authr': instance.authr,
      'url': instance.url,
      'id': instance.id,
      'image': instance.image,
    };
