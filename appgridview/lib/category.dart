import 'dart:ffi';
import 'dart:ui';

class Category{
  final int cateId;
  final String cateName;
  final String content;

  Category({ required this.cateId, required this.cateName,required this.content });

  factory Category.fromJson(Map<String,dynamic> json){
      return Category(
          cateId: int.tryParse(json['id'])??0,
          cateName: json['cateName']??"",
          content: json['content']??""
      );
  }

}
