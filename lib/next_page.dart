import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  final List<String> todoItems;
  final Function(String) addTodoItem;
  final Function(int) removeTodoItem;

  NextPage({
    super.key,
    required this.todoItems,
    required this.addTodoItem,
    required this.removeTodoItem,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    final TextEditingController _textController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('やることリスト'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: todoItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(todoItems[index]),
                  trailing: IconButton(
                    icon: Icon(Icons.check),
                    onPressed: () {
                      removeTodoItem(index);
                    },
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                labelText: '新しいやること',
                border: OutlineInputBorder(),
              ),
              onSubmitted: (value) {
                addTodoItem(value);
                _textController.clear();
              },
            ),
          ),
        ],
      ),
    );
  }
}
