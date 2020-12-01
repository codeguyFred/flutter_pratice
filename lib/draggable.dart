import 'package:flutter/material.dart';

class MyDraggable extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DraggableWidget();
}

class _DraggableWidget extends State {
  @override
  Widget build(BuildContext context) {
    //
    return Stack(
      children: [
        Column(children: [
          Image.network(
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1583224371276&di=c8a9d759bdde3218aef0f24268f11ab2&imgtype=0&src=http%3A%2F%2Fi1.sinaimg.cn%2Fent%2Fr%2F2009-03-27%2FU2507P28T3D2441286F328DT20090327082744.jpg'),
          Container(
            height: 300,
            alignment: Alignment.center,
            child: Text('哈哈哈哈哈哈哈哈哈'),
          )
        ]),
        DraggableScrollableSheet(
          initialChildSize: 0.4,
          minChildSize: 0.4,
          maxChildSize: 1,
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              color: Colors.blue[100],
              child: ListView.builder(
                  controller: scrollController,
                  itemCount: 100,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(title: Text('data'));
                  }),
            );
          },
        )
      ],
    );
  }
}
