// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataModel _$DataModelFromJson(Map<String, dynamic> json) => DataModel(
      title: json['title'] as String,
      rating: json['rating'] as String,
      description: json['description'] as String,
      thumbnail: json['thumbnail'] as String,
      youtubeLink: json['youtube_link'] as String,
      category: Category.fromJson(json['category'] as Map<String, dynamic>),
      subcategory:
          Subcategory.fromJson(json['subcategory'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataModelToJson(DataModel instance) => <String, dynamic>{
      'title': instance.title,
      'rating': instance.rating,
      'description': instance.description,
      'thumbnail': instance.thumbnail,
      'youtube_link': instance.youtubeLink,
      'category': instance.category,
      'subcategory': instance.subcategory,
    };

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      name: json['name'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
    };

Subcategory _$SubcategoryFromJson(Map<String, dynamic> json) => Subcategory(
      category: Category.fromJson(json['category'] as Map<String, dynamic>),
      name: json['name'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$SubcategoryToJson(Subcategory instance) =>
    <String, dynamic>{
      'category': instance.category,
      'name': instance.name,
      'description': instance.description,
    };

Images _$ImagesFromJson(Map<String, dynamic> json) => Images(
      link: json['link'] as String,
    );

Map<String, dynamic> _$ImagesToJson(Images instance) => <String, dynamic>{
      'link': instance.link,
    };
