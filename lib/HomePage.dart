import 'package:flutter/material.dart';

import 'Mathe.dart';
import 'algebra.dart';
import 'chemie.dart';
import 'info.dart';
import 'physik.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedpage = 0;

  final _pageOptions = [physik(), Mathe(), algebra(), chemie(), info()];

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: (null),
      ),
      body: _pageOptions[selectedpage],
      appBar: AppBar(
        title: Text("Formelsammlung IDPA 2020"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.black,
        backgroundColor: Colors.white,
        items: <Widget>[
          Icon(
            Icons.functions,
            size: 30,
            color: Colors.white,
          ),
          Icon(Icons.functions, size: 30, color: Colors.white),
          Icon(Icons.functions, size: 30, color: Colors.white),
          Icon(Icons.list, size: 30, color: Colors.white),
          Icon(Icons.compare_arrows, size: 30, color: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            selectedpage = index;
          });
        },
      ),
    );
  }
}
