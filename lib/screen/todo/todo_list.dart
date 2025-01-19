import 'package:flutter/material.dart';

class TodoModel {
  final String title;
  final bool isCompleted;

  TodoModel(this.title, this.isCompleted);
}

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List<TodoModel> todoList = [];
  TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Todo-List",
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: controller,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                    ),
                    onFieldSubmitted: (value) {
                      if (value.trim().isNotEmpty) {
                        setState(() {
                          todoList.add(TodoModel(value.trim(), false));
                          controller.clear();
                        });
                      }
                    },
                    maxLines: 1,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    if (controller.text.trim().isNotEmpty) {
                      setState(() {
                        todoList.add(TodoModel(controller.text.trim(), false));
                        controller.clear();
                      });
                    }
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.purple,
                  ),
                  child: const Text("등록"),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: todoList.length,
              itemBuilder: (context, index) {
                final todo = todoList[index];
                return ListTile(
                  leading: Checkbox(
                    value: todo.isCompleted,
                    onChanged: (value) {
                      setState(() {
                        todoList[index] = TodoModel(todo.title, value ?? false);
                      });
                    },
                  ),
                  title: Text("${index} ${todo.title}"),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.grey),
                    onPressed: () {
                      setState(() {
                        todoList.removeAt(index);
                      });
                    },
                  ),
                );
              },
              separatorBuilder: (context, index) => Divider(
                color: Colors.grey,
                thickness: 1,
                indent: 16,
                endIndent: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}