
import 'package:flutter/material.dart';

class TaskUi extends StatefulWidget {
  const TaskUi({super.key});

  @override
  State<TaskUi> createState() => _TaskUiState();
}

class _TaskUiState extends State<TaskUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Tareas'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {},
          child: const Text(
            "Task",
          ),
        ),
      ),
    );
  }
}