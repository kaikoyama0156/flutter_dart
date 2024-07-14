import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  final List<Map<String, String>> todoItems;
  final Function(String, String) addTodoItem;
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
    final TextEditingController _deadlineController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            'To Do List',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: todoItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(todoItems[index]['task'] ?? ''),
                  subtitle: Text('Deadline: ${todoItems[index]['deadline']}'),
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
            child: Column(
              children: [
                TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                    labelText: '新しい課題',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 8),
                TextField(
                  controller: _deadlineController,
                  decoration: InputDecoration(
                    labelText: '締切日',
                    border: OutlineInputBorder(),
                  ),
                  onSubmitted: (value) {
                    addTodoItem(_textController.text, _deadlineController.text);
                    _textController.clear();
                    _deadlineController.clear();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
