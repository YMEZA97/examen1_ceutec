
import 'package:flutter/material.dart';

class CurrencyUi extends StatefulWidget {
  const CurrencyUi({super.key});

  @override
  State<CurrencyUi> createState() => _CurrencyUiState();
}

class _CurrencyUiState extends State<CurrencyUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tasa de Cambio'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {},
          child: const Text(
            "Currency",
          ),
        ),
      ),
    );
  }
}