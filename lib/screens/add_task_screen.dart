import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/provider.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  TextEditingController tasktext = TextEditingController();
  String newTaskTitle = '';

  @override
  void dispose() {
    tasktext.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),
              ),
              TextField(
                  controller: tasktext,
                  onChanged: (newText) {
                    newTaskTitle = newText;
                  },
                  autofocus: true,
                  decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.lightBlueAccent, width: 3),
                    ),
                  )),
              TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent,
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      Provider.of<Data>(context, listen: false)
                          .addTask(tasktext.text);
                      Navigator.pop(context);
                    });
                  },
                  child: Text('Add')),
            ],
          ),
        ),
      ),
    );
  }
}
