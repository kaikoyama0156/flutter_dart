import 'package:flutter/material.dart';

class time_table extends StatelessWidget {
  const time_table({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Table(
        border: TableBorder.all(color: theme.colorScheme.primary),
        columnWidths: const <int, TableColumnWidth>{
          //0: IntrinsicColumnWidth(),
          0: FlexColumnWidth(0.5),
          1: FlexColumnWidth(),
          2: FlexColumnWidth(),
          3: FlexColumnWidth(),
          4: FlexColumnWidth(),
          5: FlexColumnWidth(),
        },
        children: <TableRow>[
          TableRow(
            //曜日入力
            decoration: BoxDecoration(color: theme.colorScheme.inversePrimary),
            children: const <Widget>[
              SizedBox(
                height: 50,
                child: Text(""),
              ),
              SizedBox(
                  child:
                      Align(alignment: Alignment.center, child: Text('Mon'))),
              Text("Tue"),
              Text("Wed"),
              Text("Thu"),
              Text("Fri"),
            ],
          ),
          const TableRow(
            children: <Widget>[
              SizedBox(
                  height: 50,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("1"),
                  )),
              SizedBox(
                  height: 50,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("物理"),
                  )),
              Text("Cell(1,2)"),
              Text("Cell(1,3)"),
              Text("Cell(0,3)"),
              Text("Cell(0,3)"),
            ],
          ),
          const TableRow(
            children: <Widget>[
              SizedBox(
                  height: 40,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("2"),
                  )),
              Text("古文"),
              Text("数学"),
              Text("英語"),
              Text("Cell(0,3)"),
              Text("Cell(0,3)"),
            ],
          ),
          TableRow(
            children: <Widget>[
              SizedBox(
                  height: 50,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("3"),
                  )),
              Text("Cell(1,1)"),
              Text("Cell(1,2)"),
              Text("Cell(1,3)"),
              Text("Cell(0,3)"),
              Text("Cell(0,3)"),
            ],
          ),
          TableRow(
            children: <Widget>[
              SizedBox(
                  height: 50,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("4"),
                  )),
              Text("Cell(1,1)"),
              Text("Cell(1,2)"),
              Text("Cell(1,3)"),
              Text("Cell(0,3)"),
              Text("Cell(0,3)"),
            ],
          ),
          TableRow(
            children: <Widget>[
              SizedBox(
                  height: 50,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("5"),
                  )),
              Text("Cell(1,1)"),
              Text("Cell(1,2)"),
              Text("Cell(1,3)"),
              Text("Cell(0,3)"),
              Text("Cell(0,3)"),
            ],
          ),
          TableRow(
            children: <Widget>[
              SizedBox(
                  height: 50,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("6"),
                  )),
              Text("Cell(1,1)"),
              Text("Cell(1,2)"),
              Text("Cell(1,3)"),
              Text("Cell(0,3)"),
              Text("Cell(0,3)"),
            ],
          ),
          TableRow(
            children: <Widget>[
              SizedBox(
                  height: 50,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("7"),
                  )),
              Text("Cell(1,1)"),
              Text("Cell(1,2)"),
              Text("Cell(1,3)"),
              Text("Cell(0,3)"),
              Text("Cell(0,3)"),
            ],
          ),
        ],
      ),
    );
  }
}
