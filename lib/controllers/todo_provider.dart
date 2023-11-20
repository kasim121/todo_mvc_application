import 'package:flutter/material.dart';

import '../models/task_model.dart';

class TasksProvider extends ChangeNotifier {
  final List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void toggleTaskComplete(int index) {
    _tasks[index].isComplete = !_tasks[index].isComplete;
    notifyListeners();
  }
}
