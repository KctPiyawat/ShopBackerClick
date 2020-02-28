import 'package:flutter/material.dart';
import 'package:shopbakerclick/screens/search.dart';

import 'package:shopbakerclick/utility/my_style.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // Field

  // Method
  void routToSearch(int index) {
    MaterialPageRoute route =
        MaterialPageRoute(builder: (BuildContext buildContext) {
      return Search(index: index,);
    });
    Navigator.of(context).push(route);
  }

  Widget myTool() {
    double cardSize = 110.0;
    String pathIcon = 'images/tool.png';
    String titleIcon = 'อุปกรณ์';
    Color color = Colors.yellow[100];
    return Container(
      child: GestureDetector(
        onTap: () {
          routToSearch(3);
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          color: color,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image.asset(pathIcon),
                width: 50.0,
                height: 50.0,
              ),
              Text(
                titleIcon,
                style: Mystyle().titleH3,
              )
            ],
          ),
        ),
      ),
      width: cardSize,
      height: cardSize,
    );
  }

  Widget myPackage() {
    double cardSize = 110.0;
    String pathIcon = 'images/package.png';
    String titleIcon = 'แพคเกจจิ้ง';
    Color color = Colors.grey[350];
    return Container(
      child: GestureDetector(
        onTap: () {
          routToSearch(2);
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          color: color,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image.asset(pathIcon),
                width: 50.0,
                height: 50.0,
              ),
              Text(
                titleIcon,
                style: Mystyle().titleH3,
              )
            ],
          ),
        ),
      ),
      width: cardSize,
      height: cardSize,
    );
  }

  Widget myRawMaterial() {
    double cardSize = 110.0;
    String pathIcon = 'images/cake.png';
    String titleIcon = 'วัตถุดิบ';
    Color color = Colors.blue;
    return Container(
      child: GestureDetector(
        onTap: () {
          routToSearch(1);
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          color: color,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image.asset(pathIcon),
                width: 50.0,
                height: 50.0,
              ),
              Text(
                titleIcon,
                style: Mystyle().titleH3,
              )
            ],
          ),
        ),
      ),
      width: cardSize,
      height: cardSize,
    );
  }

  Widget groupCategory() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        myRawMaterial(),
        myPackage(),
        myTool(),
      ],
    );
  }

  Widget tiltlCategory() {
    return Row(
      children: <Widget>[
        Text(
          'Category',
          style: Mystyle().titleH2,
        ),
      ],
    );
  }

  Widget showCategory() {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          tiltlCategory(),
          Mystyle().mySizebox,
          groupCategory(),
        ],
      ),
    );
  }

  Widget showBanner() {
    double heighBanner = 0.25; //TODO ความสุงของแบบเนอร์

    return Container(
      decoration: BoxDecoration(color: Mystyle().lightColor),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * heighBanner,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        showBanner(),
        showCategory(),
      ],
    );
  }
}
