import 'package:flutter/material.dart';
import 'package:examen1/pages/widgets/index.dart';

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
           mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
             
              children: <Widget>[
                TextButton.icon(
                  icon: const Icon(Icons.newspaper, size: 80),
                  onPressed: () {},
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
                  onPressed: () {},
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
                  icon: const Icon(
                    Icons.add_task,
                    size: 80,
                  ),
                  onPressed: () {},
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
                  icon: const Icon(Icons.podcasts, size: 80),
                  onPressed: () {},
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
