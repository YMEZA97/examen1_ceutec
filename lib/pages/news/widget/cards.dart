import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards(
      {super.key,
      required this.cardName,
      required this.cardImage,
      required this.cardNew});
  final String cardName;
  final String cardImage;
  final String cardNew;

  @override
  Widget build(BuildContext context) {
    return Column(            
          children: [
            Stack(
              children: [
                Ink.image(
                  image: NetworkImage(
                    cardImage,
                  ),
                  height: 150,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 16,
                  right: 16,
                  left: 16,
                  child: Text(
                    cardName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 28,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16).copyWith(bottom: 10),
              child: Text(
                cardNew,
                style: const TextStyle(fontSize: 12),
              ),
            ),
            OverflowBar(
              alignment: MainAxisAlignment.start,
              children: [
                TextButton.icon(
                  icon: const Icon(Icons.visibility),
                  onPressed: () {},
                  label: const Text(
                    'Ver Noticia',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ],
            )
    
    
            
          ],
        );
  }
}
