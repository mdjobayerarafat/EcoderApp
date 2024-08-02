import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:ecoder/models/data_model.dart';

class ApiService {
  static const String _baseUrl = 'https://mejobayerarafat.pythonanywhere.com/api';
 Future<List<DataModel>> fetchData() async {
  final response = await http.get(Uri.parse('https://mejobayerarafat.pythonanywhere.com/api/videos'));

  if (response.statusCode == 200) {
    final jsonData = jsonDecode(response.body);
    final dataModels = (jsonData as List).map((data) => DataModel.fromJson(data)).toList();
    return dataModels;
  } else {
    throw Exception('Failed to load data');
  }
}
  Future<List<Category>> fetchCategory() async {
  final response = await http.get(Uri.parse('https://mejobayerarafat.pythonanywhere.com/api/category/'));

  if (response.statusCode == 200) {
    final jsonData = jsonDecode(response.body);
    final categories = (jsonData as List).map((category) => Category.fromJson(category)).toList();
    return categories;
  } else {
    throw Exception('Failed to load subcategories');
  }
 }

 Future<List<Subcategory>> fetchSubcategory() async {
  final response = await http.get(Uri.parse('https://mejobayerarafat.pythonanywhere.com/api/subcategory'));

  if (response.statusCode == 200) {
    final jsonData = jsonDecode(response.body);
    final subcategory = (jsonData as List).map((subcategory) => Subcategory.fromJson(subcategory)).toList();
    return subcategory;
  } else {
    throw Exception('Failed to load subcategories');
  }
}

 Future<List<Images>?> fetchImages() async {
  final response = await http.get(Uri.parse('https://mejobayerarafat.pythonanywhere.com/api/images'));

  if (response.statusCode == 200) {
    final jsonData = jsonDecode(response.body);
    // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
    final images = (jsonData as List).map((images) => Images.fromJson(images)).toList();
    return images;
  } else {
    throw Exception('Failed to load images');
  }
}
 Future<List<DataModel>> categoryVideoPage(String ccategory) async {
    final url = '$_baseUrl/videos/?category_name=$ccategory';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final dataModels = (jsonData as List).map((data) => DataModel.fromJson(data)).toList();
      return dataModels;
    } else {
      throw Exception('Failed to load data');
    }
  }

   Future<List<DataModel>> subcategoryVideoPage(String subccategory) async {
    final url = '$_baseUrl/videos/?subcategory_name=$subccategory';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final dataModels = (jsonData as List).map((data) => DataModel.fromJson(data)).toList();
      return dataModels;
    } else {
      throw Exception('Failed to load data');
    }
  }
 
 
}