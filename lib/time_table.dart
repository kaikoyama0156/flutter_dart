import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
            children: <Widget>[
              SizedBox(
                height: 50,
                child: Text(""),
              ),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("Mon")),
              ),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("Tue")),
              ),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("Wed")),
              ),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("Thu")),
              ),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("Fri")),
              ),
            ],
          ),
          //1限目
          TableRow(
            children: <Widget>[
              SizedBox(
                  height: 50,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("1"),
                  )),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("物理")),
                color: Colors.yellow,
              ),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("数学②")),
                //color: Colors.orange,
              ),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("英語①")),
                //color: Colors.orange,
              ),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("化学")),
                //color: Colors.orange,
              ),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("現代文")),
                //: Colors.orange,
              ),
            ],
          ),
          //2限目
          TableRow(
            children: <Widget>[
              const SizedBox(
                  height: 50,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("2"),
                  )),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("英語①")),
                //color: Colors.orange,
              ),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("古文")),
                //color: Colors.orange,
              ),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("数学①")),
                //color: Colors.orange,
              ),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("体育")),
                //color: Colors.orange,
              ),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("数学①")),
                //: Colors.orange,
              ),
            ],
          ),
          //3限目
          TableRow(
            children: <Widget>[
              const SizedBox(
                  height: 50,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("3"),
                  )),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("体育")),
                //color: Colors.orange,
              ),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("英語②")),
                //color: Colors.orange,
              ),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("物理")),
                //color: Colors.orange,
              ),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("世界史")),
                //color: Colors.orange,
              ),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("化学")),
                //: Colors.orange,
              ),
            ],
          ),
          //4限目
          TableRow(
            children: <Widget>[
              const SizedBox(
                  height: 50,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("4"),
                  )),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("地理")),
                //color: Colors.orange,
              ),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("情報")),
                //color: Colors.orange,
              ),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("化学")),
                color: Colors.red,
              ),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("数学②")),
                color: Colors.orange,
              ),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("古文")),
                //: Colors.orange,
              ),
            ],
          ),
          //5限目
          TableRow(
            children: <Widget>[
              const SizedBox(
                  height: 50,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("5"),
                  )),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("数学③")),
                //color: Colors.orange,
              ),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("現代文")),
                //color: Colors.orange,
              ),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("音楽")),
                //color: Colors.orange,
              ),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("教養")),
                //color: Colors.orange,
              ),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("数学③")),
                //: Colors.orange,
              ),
            ],
          ),
          //6限目
          TableRow(
            children: <Widget>[
              const SizedBox(
                  height: 50,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("6"),
                  )),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("英語②")),
                //color: Colors.orange,
              ),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("物理")),
                //color: Colors.orange,
              ),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("現代文")),
                //color: Colors.orange,
              ),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("地理")),
                //color: Colors.orange,
              ),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("数学②")),
                color: Colors.orange,
              ),
            ],
          ),
          //7限目
          TableRow(
            children: <Widget>[
              const SizedBox(
                  height: 50,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("7"),
                  )),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("")),
                //color: Colors.orange,
              ),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("")),
                //color: Colors.orange,
              ),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("古文")),
                //color: Colors.orange,
              ),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("")),
                //color: Colors.orange,
              ),
              Container(
                height: 50,
                child: Align(alignment: Alignment.center, child: Text("")),
                //: Colors.orange,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
