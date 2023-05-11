import 'package:appgridview/category.dart';
import 'package:appgridview/categorylist.dart';
import 'package:appgridview/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyHomePage extends StatelessWidget{
  String title = "";
  MyHomePage({required this.title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: IconButton(
          icon: Icon(Icons.notifications_active),
          onPressed: (){
            showAlert(context);
          },
        ),
      ),
      body: FutureBuilder(
        future: fetchCategory(http.Client()),
        builder: (context,snapshot){
          List<Category> categories = [];
          if(snapshot.hasError){
            print(snapshot.error);
          }else{
            categories  = snapshot.data ?? [];

          }
          return snapshot.hasData ? CategoryList(categories: categories):Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
  void showAlert(BuildContext context){
    showDialog(context: context,
        builder: (context)=>AlertDialog(content: Text("Hi"),));
  }

}
