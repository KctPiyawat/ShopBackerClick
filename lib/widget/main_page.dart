import 'package:flutter/material.dart';
import 'package:shopbakerclick/utility/my_style.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // Field

  // Method
  Widget rawMaterial() {
    double cardSize = 110.0;
    String pathIcon = 'images/cake.png';
    String titleIcon = 'วัตถุดิบ';
    Color color = Colors.blue
    return Container(
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
      width: cardSize,
      height: cardSize,
    );
  }

  Widget groupCategory() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        rawMaterial(),
        rawMaterial(),
        rawMaterial(),
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
    return Container(padding: EdgeInsets.all(10.0),
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
