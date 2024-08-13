
import 'package:flutter/material.dart';

class TaskUi extends StatefulWidget {
  const TaskUi({super.key});

  @override
  State<TaskUi> createState() => _TaskUiState();
}


final List<String> tasks = [
  'Tarea de Matemáticas',
  'Foro de Historia',
  'Examen de Física',
  'Tarea de Programación',
  'Foro de Biología',
];

class _TaskUiState extends State<TaskUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Tareas'),
      ),
     
 body: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: const Icon(Icons.assignment),
                title: Text(tasks[index]),
                trailing: IconButton(
                  icon: const Icon(Icons.check_circle_outline),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('${tasks[index]} completada!')),
                    );
                  },
                ),
              ),
            );
          }),
    );
  }
}