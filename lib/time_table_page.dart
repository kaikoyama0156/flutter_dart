import 'package:flutter/material.dart';
import 'package:homework/time_table.dart';

class TimeTablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    final stylea = theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary, fontWeight: FontWeight.bold);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('時間割'),
      ),
      body: Column(children: [
        Container(height: 30),
        // Container(
        //   alignment: Alignment.center,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(10),
        //     border: Border.all(color: theme.colorScheme.inversePrimary),
        //     color: theme.colorScheme.inversePrimary,
        //   ),
        //   height: 40,
        //   child: Padding(
        //       padding: const EdgeInsets.all(5.0),
        //       child: Text(
        //         '今期の時間割',
        //         style: TextStyle(fontSize: 20),
        //       )),
        // ),
        Container(
            height: 40,
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(
                'Today is TuesDay',
                style: TextStyle(fontSize: 25),
              ),
            )),
        time_table(theme: theme),
        Container(height: 30),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: theme.colorScheme.inversePrimary,
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                children: [
                  Text(
                    '明日までの課題',
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    "化学：ワーク14ページ",
                    style: stylea.copyWith(
                        color: theme.colorScheme.onSurface,
                        fontSize: theme.textTheme.displaySmall?.fontSize),
                  ),
                ],
              ),
            )),
      ]),
    );
  }
}
