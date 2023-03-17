import 'package:flutter/material.dart';
import 'list_view.dart';
import 'myhomepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home:Listview(),
      home:MyHomePage(),
    );
  }
}

