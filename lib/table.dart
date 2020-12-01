import 'package:flutter/material.dart';

class MyTable extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyTableState();
}

class _MyTableState extends State {
  @override
  Widget build(BuildContext context) {
    var _sortAscending = true;
    var _sortColumnIndex = 0;
    List<User> data = [
      User('老孟', 18),
      User('老孟1', 19, selected: true),
      User('老孟2', 20),
      User('老孟3', 21),
      User('老孟4', 22),
    ];
    List<DataRow> dateRows = [];
    for (int i = 0; i < data.length; i++) {
      dateRows.add(DataRow(
        selected: data[i].selected,
        onSelectChanged: (selected) {
          setState(() {
            data[i].selected = selected;
          });
        },
        cells: [
          DataCell(Text('${data[i].name}')),
          DataCell(Text('${data[i].age}')),
        ],
      ));
    }
    return DataTable(
      sortColumnIndex: _sortColumnIndex,
      sortAscending: _sortAscending,
      columns: [
        DataColumn(
            label: Text('姓名'),
            onSort: (int columnIndex, bool ascending) {
              setState(() {
                _sortColumnIndex = columnIndex;
                _sortAscending = ascending;
                if (ascending) {
                  data.sort((a, b) => a.name.compareTo(b.name));
                } else {
                  data.sort((a, b) => b.name.compareTo(a.name));
                }
              });
            }),
        DataColumn(
            label: Text('年龄'),
            numeric: true,
            onSort: (int columnIndex, bool ascending) {
              setState(() {
                _sortColumnIndex = columnIndex;
                _sortAscending = ascending;
                if (ascending) {
                  data.sort((a, b) => a.age.compareTo(b.age));
                } else {
                  data.sort((a, b) => b.age.compareTo(a.age));
                }
              });
            }),
      ],
      rows: dateRows,
    );
  }
}

class User {
  User(this.name, this.age, {this.selected = false});

  String name;
  int age;
  bool selected;
}
