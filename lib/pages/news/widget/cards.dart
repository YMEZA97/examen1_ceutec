import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({super.key, required this.cardName});
  final String cardName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 100,
      child: Center(child: Text(cardName)),
    );
  }
}

