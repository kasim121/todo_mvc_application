// main.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controllers/todo_provider.dart';
import 'views/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider(
      create: (context) => TasksProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TaskListScreen(),
      ),
    );
  }
}
