import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DismissibleWidget();
}

class _DismissibleWidget extends State {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      confirmDismiss: (DismissDirection direction) async {
        return false;
      },
      key: ValueKey('key'),
      child: Container(
        height: 80,
        color: Colors.red,
      ),
    );
  }
}

