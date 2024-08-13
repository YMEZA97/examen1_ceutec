import 'package:flutter/material.dart';

class PodcastUi extends StatefulWidget {
  const PodcastUi({super.key});

  @override
  State<PodcastUi> createState() => _PodcastUiState();
}

class _PodcastUiState extends State<PodcastUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {},
          child: const Text(
            "Podcast",
          ),
        ),
      ),
    );
  }
}
