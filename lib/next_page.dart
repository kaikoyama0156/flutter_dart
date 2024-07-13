import 'package:flutter/material.dart';
import 'package:homework/main.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('やりることリスト'),
          //centerTitle: true,
        ),
        body: Container(
          child: Center(
            child: ElevatedButton(
              child: Text('時間割へ'),
              onPressed: () {
                //ボタンを押したときに何が起こるかをかく
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FirstPage()),
                );
              },
            ),
          ),
        ));
  }
}
