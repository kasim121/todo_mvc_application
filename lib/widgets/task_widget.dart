import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_model.dart';
import '../controllers/todo_provider.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TasksProvider>(
      builder: (context, tasksProvider, child) {
        if (tasksProvider.tasks.isEmpty) {
          return const Center(
            child: Text(
              'Please create a task.',
              style: TextStyle(fontSize: 16),
            ),
          );
        }
        return ListView.builder(
          itemCount: tasksProvider.tasks.length,
          itemBuilder: (context, index) {
            Task task = tasksProvider.tasks[index];
            return ListTile(
              title: Text(task.title),
              trailing: Checkbox(
                value: task.isComplete,
                onChanged: (value) {
                  tasksProvider.toggleTaskComplete(index);
                },
              ),
            );
          },
        );
      },
    );
  }
}
