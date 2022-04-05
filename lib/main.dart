import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/provider/provider.dart';
import 'package:todoey/screens/tasks_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return Data();
      },
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
