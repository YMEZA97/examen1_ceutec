
import 'package:examen1/pages/news/widget/cards.dart';
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
      body: const Center(

        child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(child: Cards(cardName: 'Noticia 1')),
              Card(child: Cards(cardName: 'Noticia 2')),
              Card(child: Cards(cardName: 'Noticia 3')),
            ],
          ),
       
      ),
    );
  }
}