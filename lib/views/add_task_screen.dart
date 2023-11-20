import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_model.dart';
import '../controllers/todo_provider.dart';

class AddTaskScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Task'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(labelText: 'Write task here'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                String title = _controller.text;
                if (title.isNotEmpty) {
                  Task newTask = Task(title: title);
                  Provider.of<TasksProvider>(context, listen: false)
                      .addTask(newTask);
                  Navigator.pop(context);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      duration: Duration(seconds: 1),
                      content: Text('Please enter a task title.'),
                    ),
                  );
                }
              },
              child: const Text('Add Task'),
            ),
          ],
        ),
      ),
    );
  }
}
