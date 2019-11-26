import 'dart:async';
import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Interface extends StatelessWidget {

  Future<String> getData() async{
    
    var responce = await http.get(
      Uri.decodeFull("https://jsonplaceholder.typicode.com/users"),//Users url
      // Uri.decodeFull("https://jsonplaceholder.typicode.com/posts"),//Comments url
      // Uri.decodeFull("https://jsonplaceholder.typicode.com/photos"),// photos url
      //
      headers: {
        "Accept":"application/json"
      }
    );

    List data = json.decode(responce.body);
    print(data[1]["email"]);
    

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("get data"),
              onPressed: () {
                getData();
              },
              
            )
          ],
        ),
      ),
      
    );
  }
}