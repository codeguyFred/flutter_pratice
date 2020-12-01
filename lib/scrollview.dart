import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TestState();
}

class _TestState extends State{
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      reverse: false,
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          expandedHeight: 200.0,
          stretch: true,
          flexibleSpace: FlexibleSpaceBar(
            stretchModes: [StretchMode.blurBackground,StretchMode.zoomBackground],
            title: Text('复仇者联盟'),
            background: Image.network(
              'http://img.haote.com/upload/20180918/2018091815372344164.jpg',
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        SliverGrid.count(crossAxisCount: 4,children: List.generate(8, (index){
          return Container(
            color: Colors.primaries[index%Colors.primaries.length],
            alignment: Alignment.center,
            child: Text('$index',style: TextStyle(color: Colors.white,fontSize: 20),),
          );
        }).toList(),),
        SliverList(
          delegate: SliverChildBuilderDelegate((content, index) {
            return Container(
              height: 85,
              alignment: Alignment.center,
              color: Colors.primaries[index % Colors.primaries.length],
              child: Text('$index',style: TextStyle(color: Colors.white,fontSize: 20),),
            );
          }, childCount: 25),
        )
      ],
    );
  }
}