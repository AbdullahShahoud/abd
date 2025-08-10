// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Book _$BookFromJson(Map<String, dynamic> json) => Book(
      author: json['author'] as String,
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      link: json['link'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$BookToJson(Book instance) => <String, dynamic>{
      'title': instance.title,
      'author': instance.author,
      'link': instance.link,
      'id': instance.id,
      'image': instance.image,
    };
