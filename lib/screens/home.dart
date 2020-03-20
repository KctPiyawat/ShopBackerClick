import 'package:flutter/material.dart';
import 'package:shopbakerclick/screens/search.dart';
import 'package:shopbakerclick/utility/my_constant.dart';
import 'package:shopbakerclick/utility/my_style.dart';
import 'package:shopbakerclick/widget/account.dart';
import 'package:shopbakerclick/widget/braket.dart';
import 'package:shopbakerclick/widget/main_page.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Field
  List<Widget> showWidgets = [MainPage(), Braket(), Account()];
  int index = 0;
  String searchString;

  // Method
  BottomNavigationBarItem homeNav() {
    return BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
        size: Mystyle().myIconSize,
      ),
      title: Text('หน้าหลัก'),
    );
  }

  BottomNavigationBarItem braketNav() {
    return BottomNavigationBarItem(
      icon: Icon(
        Icons.add_shopping_cart,
        size: Mystyle().myIconSize,
      ),
      title: Text('ตะกร้า'),
    );
  }

  BottomNavigationBarItem accountNav() {
    return BottomNavigationBarItem(
      icon: Icon(
        Icons.account_box,
        size: Mystyle().myIconSize,
      ),
      title: Text('บัญชี'),
    );
  }

  Widget myButtonNavBar() {
    return BottomNavigationBar(
        onTap: (int i) {
          setState(() {
            index = i;
          });
        },
        currentIndex: index,
        items: <BottomNavigationBarItem>[
          homeNav(),
          braketNav(),
          accountNav(),
        ]);
  }

  Widget searchFrom() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.black26,
      ),
      height: 50.0,
      child: TextField(onChanged: (value) => searchString = value.trim(),
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 16.0),
          border: InputBorder.none,
          hintStyle: TextStyle(color: Mystyle().white1),
          hintText: 'ค้นหาสินค้า',
        ),
      ),
    );
  }

  IconButton searchIconButton() {
    return IconButton(
      tooltip: 'ค้นหาสินค้า',
      icon: Icon(Icons.search, color: Colors.white, size: Mystyle().myIconSize),
      onPressed: () {
        if (searchString==null || searchString.isEmpty) {
          print('Have Space');
         
        } else {
          routeToSearch();
        }
      },
    );
  }

  void routeToSearch() {
    MaterialPageRoute materialPageRoute = MaterialPageRoute(
      builder: (BuildContext buildContext) {
        return Search(searchString: searchString,
          index: 0,
        );
      },
    );
    Navigator.of(context).push(materialPageRoute);
  }

  Widget myDarwer() {
    return Drawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: myDarwer(),
      appBar: AppBar(
        title: searchFrom(),
        actions: <Widget>[searchIconButton()],
      ),
      body: showWidgets[index],
      bottomNavigationBar: myButtonNavBar(),
    );
  }
}
