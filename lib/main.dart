import 'package:flutter/material.dart';
import 'package:shopbakerclick/screens/home.dart';
import 'package:shopbakerclick/utility/my_constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      debugShowCheckedModeBanner: false,
      title: MyConstant().appName,
      home: Home(),
    );
  }
}
