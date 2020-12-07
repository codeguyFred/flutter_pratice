import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/scrollview.dart';
import 'package:flutter_app/table.dart';

import 'caculate.dart';
import 'dismissible.dart';
import 'draggable.dart';
import 'drawer.dart';
import 'fbuilder.dart';
import 'flow.dart';
import 'hero.dart';
import 'navigator.dart';
import 'rose.dart';

void main() {
  runApp(Caculator());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContainPage(),
    );
  }
}

class ContainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Contain();
  }
}

class _Contain extends State<ContainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currBody,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTap,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.black,
        currentIndex: _currentIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(label: '首页', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: '书籍', icon: Icon(Icons.book)),
          BottomNavigationBarItem(label: '我的', icon: Icon(Icons.perm_identity)),
          BottomNavigationBarItem(label: '测试', icon: Icon(Icons.access_alarm)),
        ],
      ),
    );
  }

  int _currentIndex = 0;

  Widget _currBody = HomePage();

  _onTap(int index) {
    switch (index) {
      case 0:
        _currBody = HomePage();
        ;
        break;
      case 1:
        _currBody = BookPage();
        break;
      case 2:
        _currBody = MyPage();
        break;

      case 3:
        _currBody = MyScrollView();
        break;
    }
    setState(() {
      _currentIndex = index;
    });
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*localeListResolutionCallback:
          (List<Locale> locales, Iterable<Locale> supportedLocales) {
        return Locale('zh');
      },
      localeResolutionCallback:
          (Locale locale, Iterable<Locale> supportedLocales) {
        return Locale('zh');
      },
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('zh', 'CH'),
        const Locale('en', 'US'),
      ],*/
      home: Container(
        color: Colors.teal,
        child: Banner(
          message: '急',
          location: BannerLocation.topStart,
        ),
      ),
    );
  }
}

class BookPage extends StatefulWidget {
/*
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Builder(
            builder: (context) =>
          */
/*Center(child: RaisedButton(onPressed:
          () */ /*
 */
/*async {
        var result= await showCupertinoModalPopup(
            context: context,
            builder: (context) {
              return CupertinoActionSheet(
                title: Text('提示'),
                message: Text('是否要删除当前项？'),
                actions: <Widget>[
                  CupertinoActionSheetAction(
                    child: Text('删除'),
                    onPressed: () {
                      Navigator.of(context).pop('delete');
                    },
                    isDefaultAction: true,
                  ),
                  CupertinoActionSheetAction(
                    child: Text('暂时不删'),
                    onPressed: () {
                      Navigator.of(context).pop('not delete');
                    },
                    isDestructiveAction: true,
                  ),
                ],
                cancelButton: CupertinoActionSheetAction(
                    child: Text('取消'),
                    onPressed: () {
                      Navigator.of(context).pop('cancel');
                    }),
              );
            });
        print('$result');
      }*/ /*
 */
/*
          {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text('xixi'),
                  title: Text('haha'),
                actions: [
                  FlatButton(child: Text('取消'),onPressed: (){},),
                  FlatButton(child: Text('确认'),onPressed: (){},),
                ],
              );
            });
      })),*/ /*

          */
/*    Center(
                  child: CupertinoContextMenu(
                    child: Container(
                      color: Colors.red,
                      height: 60,
                      width: 40,
                    ),
                    previewBuilder: (BuildContext context,
                        Animation<double> animation, Widget child) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(10 * animation.value),
                          color: Colors.red,
                        ),
                        height: 60,
                        width: 100,
                      );
                    },
                    actions: <Widget>[
                      CupertinoContextMenuAction(
                        isDestructiveAction: true,
                        child: const Text('Action one'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      CupertinoContextMenuAction(
                        child: const Text('Action two'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                )*/ /*


        ));

    MaterialApp(
        home: Container(
          color: Colors.teal,
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Baseline(
                baseline: 50,
                baselineType: TextBaseline.alphabetic,
                child: Text(
                  '嘻嘻嘻',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
              Baseline(
                baseline: 50,
                baselineType: TextBaseline.alphabetic,
                child: Text(
                  '牛逼了踢',
                  style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ));
  }
*/

  @override
  State<StatefulWidget> createState() {
    return DateState();
  }
}

DateTime _selectedDate = DateTime.now();

class DateState extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var _dateTime = DateTime.now();

    return CupertinoDatePicker(
      initialDateTime: _dateTime,
      onDateTimeChanged: (date) {
        setState(() {
          _dateTime = date;
        });
      },
      minimumDate: DateTime.now().add(Duration(days: -1)),
      maximumDate: DateTime.now().add(Duration(days: 1)),
      use24hFormat: true,
    );
  }
}

class Cb extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CbState();
  }
}

class CbState extends State {
  var _checkValue = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        subtitle: Text('测试以下吧'),
        secondary: Icon(Icons.person),
        value: _checkValue,
        onChanged: (value) {
          setState(() {
            _checkValue = value;
          });
        });
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: MyPainter());
  }
}

class MyPainter extends CustomPainter {
  Paint _paint = new Paint()
    ..color = Colors.red
    ..strokeWidth = 3;

  @override
  void paint(Canvas canvas, Size size) {
    var points=[
      Offset(0, 0),
      Offset(size.width, size.height),
    ];
    canvas.drawPoints(PointMode.points, points, _paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {}
}

class TestPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestPageState();
  }
}

class TestPageState extends State with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  TextEditingController _controller;

  @override
  void initState() {
    _animationController =
        AnimationController(duration: Duration(microseconds: 500), vsync: this);
    _controller = TextEditingController()
      ..addListener(() {
        //获取输入框的内容，变为大写
        _controller.text = _controller.text.toUpperCase();
      });
    super.initState();
  }

  @override
  dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
/*    return TextField(
        decoration: InputDecoration(
      labelText: '姓名',
      labelStyle: TextStyle(color: Colors.red),

      */ /*helperText: '用户名长度为6-10个字母',
      helperStyle: TextStyle(color: Colors.blue),
      helperMaxLines: 1,*/ /*

      errorText: '用户名输入错误',
      errorStyle: TextStyle(fontSize: 12),
      errorMaxLines: 1,
      errorBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
    ));*/

    /* return Container(
      height: 60,
      width: 250,
      child: TextField(
        decoration: InputDecoration(
          fillColor: Color(0x30cccccc),
          filled: true,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0x00FF0000)),
              borderRadius: BorderRadius.all(Radius.circular(100))),
          hintText: 'QQ号/手机号/邮箱',
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0x00000000)),
              borderRadius: BorderRadius.all(Radius.circular(100))),
        ),
      ),
    );*/
    return TextField(
      controller: _controller,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
    );
  }
/*@override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Container()),
        Row(
          children: [
            RaisedButton(child:Text('Foward'),onPressed: (){}),
            RaisedButton(child:Text('Reverse'),onPressed: (){}),
          ],
        ),
        CupertinoFullscreenDialogTransition(
            primaryRouteAnimation: _animationController,
            secondaryRouteAnimation: _animationController,
            child:Container(
              color: Colors.blueGrey,
              height: 300,
            ), linearTransition: true)
      ],
    );
  }*/

}
