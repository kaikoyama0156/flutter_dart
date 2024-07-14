import 'package:flutter/material.dart';
import 'package:homework/time_table.dart';
import 'package:homework/next_page.dart';

class TimeTablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    final List<Map<String, String>> todoItems;
    final stylea = theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary, fontWeight: FontWeight.bold);
    List<String> weekdays = [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ];
    DateTime now = DateTime.now();
    String day = weekdays[now.weekday - 1];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            'Time Schedule',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
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
                'Today is $day',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            )),
        time_table(theme: theme),
        Container(height: 20),
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
                    style: TextStyle(fontSize: 20),
                  ),
                  //Text(todoItems[index]['task'] ?? ''),
                  Text(
                    "物理：ワークp14",
                    style: stylea.copyWith(
                        color: theme.colorScheme.onSurface, fontSize: (20)),
                  ),
                ],
              ),
            )),
      ]),
    );
  }
}
