import 'package:flutter/material.dart';

import 'category.dart';

class CategoryList extends StatelessWidget{

  List<Category> categories =[];
  CategoryList({required this.categories});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: categories.length,
        itemBuilder:  (BuildContext context, int index){
          return Card(
            color: Colors.amber,
            child: Center(child: Text(' '+categories[index].cateName)),
          );
        }
    );
  }

}