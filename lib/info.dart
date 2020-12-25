import 'package:flutter/material.dart';


// ignore: camel_case_types
class info extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<info> {
  final FixedExtentScrollController _controller = FixedExtentScrollController();
  List<Widget> listtiles = [
    ListTile(
      leading: Icon(Icons.portrait),
      title: Text("Portrait"),
      subtitle: Text("Beautiful View..!"),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {//Von hier aus möchte ich zu dem Detailscreen navigieren!

      },
    ),
    ListTile(
      leading: Icon(Icons.landscape),
      title: Text("LandScape"),
      subtitle: Text("Beautiful View..!"),
      trailing: Icon(Icons.remove),
    ),
    ListTile(
      leading: Icon(Icons.map),
      title: Text("Map"),
      subtitle: Text("Map View..!"),
      trailing: Icon(Icons.wb_sunny),
    ),
    ListTile(
      leading: Icon(Icons.landscape),
      title: Text("LandScape"),
      subtitle: Text("Wonderful View..!"),
      trailing: Icon(Icons.wb_sunny),
    ),
    ListTile(
      leading: Icon(Icons.list),
      title: Text("List Example"),
      subtitle: Text("List Wheel Scroll view .!"),
      trailing: Icon(Icons.cloud),
    ),
    ListTile(
      leading: Icon(Icons.settings),
      title: Text("Settings"),
      subtitle: Text("Change the setting..!"),
      trailing: Icon(Icons.portrait),
    ),
    ListTile(
      leading: Icon(Icons.event),
      title: Text("Add data"),
      subtitle: Text("Data View..!"),
      trailing: Icon(Icons.add),
    ),
    ListTile(
      leading: Icon(Icons.landscape),
      title: Text("LandScape"),
      subtitle: Text("Beautiful View..!"),
      trailing: Icon(Icons.wb_sunny),
    ),
    ListTile(
      leading: Icon(Icons.email),
      title: Text("Email"),
      subtitle: Text("Check Email..!"),
      trailing: Icon(Icons.arrow_forward),
    ),
    ListTile(
      leading: Icon(Icons.games),
      title: Text("Games"),
      subtitle: Text("Play Games..!"),
      trailing: Icon(Icons.zoom_out_map),
      contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text("Info"),
        ),
        body: Center(
          child: ListWheelScrollView(
            controller: _controller,
            itemExtent: 70,
            magnification: 1.0,
            useMagnifier: true,
            physics: FixedExtentScrollPhysics(),
            children: listtiles, //List of widgets
          ),
        ));
  }
}
