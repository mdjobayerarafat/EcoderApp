import 'package:json_annotation/json_annotation.dart';

part 'data_model.g.dart';

@JsonSerializable()
class DataModel {
  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'rating')
  String rating;

  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'thumbnail')
  String thumbnail;

  @JsonKey(name: 'youtube_link')
  String youtubeLink;

  @JsonKey(name: 'category')
  Category category;

  @JsonKey(name: 'subcategory')
  Subcategory subcategory;

  DataModel({required this.title, required this.rating, required this.description, required this.thumbnail, required this.youtubeLink, required this.category, required this.subcategory});

  factory DataModel.fromJson(Map<String, dynamic> json) => _$DataModelFromJson(json);
}

@JsonSerializable()
class Category {
  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'description')
  String description;

  Category({required this.name, required this.description});

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

  get id => null;
}

@JsonSerializable()
class Subcategory {
  @JsonKey(name: 'category')
  Category category;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'description')
  String description;

  Subcategory({required this.category, required this.name, required this.description});

  factory Subcategory.fromJson(Map<String, dynamic> json) => _$SubcategoryFromJson(json);
}
@JsonSerializable()
class Images {
  @JsonKey(name: 'link')
  String link;



  Images({required this.link});

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);

  get images => null;
}