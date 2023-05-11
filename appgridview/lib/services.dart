import 'dart:convert';

import 'package:appgridview/category.dart';
import 'package:http/http.dart' as http;

String Url = "https://6433b0e6582420e231693d9b.mockapi.io/categories";
Future<List<Category>> fetchCategory(http.Client client) async {
  String url_cate = Url;
  final response = await client.get(Uri.parse(url_cate));
  if (response.statusCode == 200) {
    print(response.statusCode);
    var mapResponse = json.decode(response.body);
    final categories = mapResponse.cast<Map<String, dynamic>>();
    print("Category");
    print(categories);
    print ("------------------");
    List<Category> listOfCategory = await categories.map<Category>((json) {
      return Category.fromJson(json);
    }).toList();
    print(listOfCategory[0].cateName);
    return listOfCategory;
  } else {
    return [];
  }
}
