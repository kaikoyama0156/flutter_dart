import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:homework/next_page.dart';
import 'package:homework/time_table.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'homework',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 116, 109, 130)),
        useMaterial3: true,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    int _selectedIndex = 0;

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
        print("タップされた場所は" + _selectedIndex.toString());
      });
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('時間割'),
        //centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              child: Text('やることリストへ'),
              onPressed: () {
                //ボタンを押したときに何が起こるかをかく
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NextPage()),
                );
              },
            ),
          ),
          time_table(theme: theme),
          //ここまで時間割
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: '時間割',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'タイムライン',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'To Do',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
