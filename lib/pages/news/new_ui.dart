
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
              Card(child: Cards(cardName: 'Noticia 1', cardImage: "https://store-images.s-microsoft.com/image/apps.36835.14492785218726113.9d2f0146-3acc-4079-9f6b-3299fae5a03a.5acf0d90-bd2c-4fe6-9c97-5316989382bb?q=90&w=256&h=256&mode=crop&format=jpg&background=%23464646",cardNew: "Hola es es la noticia",)),
             
            ],
          ),
       
      ),
    );
  }
}