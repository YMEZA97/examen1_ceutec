
import 'package:flutter/material.dart';

class NewUi extends StatefulWidget {
  const NewUi({super.key});

  @override
  State<NewUi> createState() => _NewUiState();
}

class _NewUiState extends State<NewUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Noticias'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {},
          child: const Text(
            "News",
          ),
        ),
      ),
    );
  }
}