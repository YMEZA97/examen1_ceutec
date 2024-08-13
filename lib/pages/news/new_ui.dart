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
                      "https://marketplace.canva.com/EAFhmJtJ5bs/1/0/1131w/canva-portada-documento-peri%C3%B3dico-cl%C3%A1sico-noticias-estructurado-blanco-y-negro-mirJGaLiT4o.jpg",
                  cardNew:
                      "Nulla quis finibus odio, vel porttitor eros. Aliquam eu augue quis turpis semper porttitor...",
                )),
                Card(
                    child: Cards(
                  cardName: 'Noticia 3',
                  cardImage:
                      "https://media.datacenterdynamics.com/media/images/Extra.width-880.jpg",
                  cardNew:
                      "Integer mollis mi sed dolor maximus viverra. Suspendisse sit amet quam euismod, vulputate mauris sed, mattis nulla...",
                )),
                Card(
                    child: Cards(
                  cardName: 'Noticia 4',
                  cardImage:
                      "https://serchile.cl/site/img/material_particulado.jpg",
                  cardNew:
                      "Integer mollis mi sed dolor maximus viverra. Suspendisse sit amet quam euismod, vulputate mauris sed, mattis nulla...",
                )),
              ],
            ),
          ),
        ));
  }
}
