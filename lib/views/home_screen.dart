import 'package:flutter/material.dart';
import '../widgets/task_widget.dart';
import 'add_task_screen.dart';

class TaskListScreen extends StatelessWidget {
  const TaskListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Todo App'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: const TaskList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddTaskScreen()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
