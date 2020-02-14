import 'package:flutter/material.dart';

class Mystyle {
  Color primaryColor = Color.fromARGB(0xff, 0x0e, 0x4b, 0x70);
  Color lightColor = Color.fromARGB(0xff, 0x47, 0x77, 0x9f);
  Color dartColor = Color.fromARGB(0xff, 0x00, 0x24, 0x44);
  Color white1 = Colors.white54;

  double myIconSize = 36.0;

  TextStyle titleH1 = TextStyle(
    fontSize: 36.0,
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(0xff, 0x00, 0x24, 0x44),
  );

  TextStyle titleH2 = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(0xff, 0x00, 0x24, 0x44),
  );

  TextStyle titleH3 = TextStyle(
    fontSize: 16.0,
    // fontWeight: FontWeight.bold,
    color: Color.fromARGB(0xff, 0x00, 0x24, 0x44),
  );

  Widget mySizebox = SizedBox(
    width: 5.0,
    height: 10.0,
  );

  Mystyle();
}
