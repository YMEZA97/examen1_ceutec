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
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Noticias'),
        ),
        body: const Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Card(
                    child: Cards(
                  cardName: 'Noticia 1',
                  cardImage:
                      "https://www.shutterstock.com/image-vector/breaking-news-poster-banner-graphic-260nw-2453959087.jpg",
                  cardNew:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rutrum eu felis vitae ullamcorper. Nunc mollis...",
                )),
                Card(
                    child: Cards(
                  cardName: 'Noticia 2',
                  cardImage:
                      "https://img.freepik.com/vector-gratis/fondo-estudio-noticias-realista_23-2149985612.jpg",
                  cardNew:
                      "Nulla quis finibus odio, vel porttitor eros. Aliquam eu augue quis turpis semper porttitor...",
                )),
                Card(
                    child: Cards(
                  cardName: 'Noticia 3',
                  cardImage:
                      "https://www.shutterstock.com/image-vector/stock-vector-illustration-logo-breaking-600nw-688668343.jpg",
                  cardNew:
                      "Integer mollis mi sed dolor maximus viverra. Suspendisse sit amet quam euismod, vulputate mauris sed, mattis nulla...",
                )),
                Card(
                    child: Cards(
                  cardName: 'Noticia 4',
                  cardImage:
                      "https://img.freepik.com/vector-premium/noticias-ultima-hora-azul-sobre-fondo-azul-oscuro-ilustracion-vectorial-concepto-noticias_194782-1404.jpg",
                  cardNew:
                      "Integer mollis mi sed dolor maximus viverra. Suspendisse sit amet quam euismod, vulputate mauris sed, mattis nulla...",
                )),
                 Card(
                    child: Cards(
                  cardName: 'Noticia 5',
                  cardImage:
                      "https://i.pinimg.com/736x/0a/3f/3f/0a3f3fe4b482a8853bf63364d9a3bc6a.jpg",
                  cardNew:
                      "Integer mollis mi sed dolor maximus viverra. Suspendisse sit amet quam euismod, vulputate mauris sed, mattis nulla...",
                )),
              ],
            ),
          ),
        ));
  }
}
