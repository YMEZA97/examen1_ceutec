import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                TextButton.icon(
                  icon: const Icon(Icons.newspaper, size: 80),
                  onPressed: () {
                    context.goNamed("News");
                  },
                  label: const Text(
                    'Noticias',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                    ), 
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                TextButton.icon(
                  icon: const Icon(Icons.currency_exchange, size: 80),
                  onPressed: () {
                    context.goNamed("Currency");
                  },
                  label: const Text(
                    'Currency',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                TextButton.icon(
                  icon: const Icon(
                    Icons.add_task,
                    size: 80,
                  ),
                  onPressed: () {
                    context.goNamed("Task");
                  },
                  label: const Text(
                    'Task',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                TextButton.icon(
                  icon: const Icon(Icons.podcasts, size: 80),
                  onPressed: () {
                    context.goNamed("Podcast");
                  },
                  label: const Text(
                    'Podcast',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
