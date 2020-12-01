import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MyDrawerState();
  }
}

class MyDrawerState extends State {
  var _color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  color: _color
              ),
              duration: Duration(seconds: 1),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    child: Text('孟'),
                  ),
                  SizedBox(width: 10,),
                  ActionChip(
                    label: Text('老孟'),
                    onPressed: () {
                      setState(() {
                        _color = Colors.red.withOpacity(.5);
                      });
                    },
                  )
                ],
              ),
            ),
            ListTile(title: Text("data"), onTap: () {
              Navigator.of(context).pop();
            },),
            ListTile(title: Text("data")),
            ListTile(title: Text("data")),
            ListTile(title: Text("data")),
          ],
        ),
      ),
    );
  }
}

