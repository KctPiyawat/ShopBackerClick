import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:shopbakerclick/utility/my_style.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  // Field

  // Method

  Widget cancelButton() {
    return FlatButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: Text('ยกเลิก'),
    );
  }

  Widget searchFrom() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0),
        color: Colors.black26,
      ),
      height: 40.0,
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          suffixIcon: Icon(Icons.cancel,color: Mystyle().white1,),
          hintStyle: TextStyle(color: Mystyle().white1),
          hintText: 'ค้นหาสินค้า',
          prefixIcon: Icon(
            Icons.search,
            color: Mystyle().white1,
          ),
        ),
      ),
    );
  }

  Widget backButton() {
    return IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: searchFrom(),
        leading: backButton(),
        // backgroundColor: Mystyle().primaryColor,
      ),
    );
  }
}
