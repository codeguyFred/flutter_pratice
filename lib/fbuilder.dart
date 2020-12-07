import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FBuilder extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FBuilderState();
}

class _FBuilderState extends State {
  var _future;
  @override
  void initState() {
    super.initState();
    _future=Future.delayed(Duration(seconds: 3), () {
      //return '老孟，一个有态度的程序员';
      return Future.error('error');
    });
  }


  @override
  Widget build(BuildContext context) {
    return
      FutureBuilder(
        future: _future,
        builder: (context, snapshot) {
          _dataWidget(data) {
            return ListView.separated(
              itemBuilder: (context, index) {
                return Container(
                  height: 60,
                  alignment: Alignment.center,
                  child: Text(
                    '$index',
                    style: TextStyle(fontSize: 20),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: 10,
            );
          }

          _loadingWidget() {
            return Center(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: CircularProgressIndicator(),
              ),
            );
          }

          _loadingErrorWidget() {
            return Center(
              child:  RaisedButton(
                child: Text('数据加载失败，请重试。'),
                onPressed: (){
                  setState(){

                  }
                },
              ),
            );
          }
          var widget;
          if (snapshot.connectionState == ConnectionState.done) {
            //加载完成
            if (snapshot.hasError) {
              widget = _loadingErrorWidget();
            } else {
              widget = _dataWidget(snapshot.data);
            }
          } else {
            //加载中
            widget =  _loadingWidget();
          }

          return widget;
        },
      );

  }
}