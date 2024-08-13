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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
   
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Ingrese la cantidad en Lempiras',
              ),
            ),
            const SizedBox(height: 20),
            DropdownButton<String>(
           
              items: <String>['USD', 'EUR', 'HNL a USD', 'HNL a EUR']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                
                });
              },
            ),
            const SizedBox(height: 20),
          TextButton.icon(
                  icon: const Icon(Icons.currency_exchange, size: 5),
                  onPressed: () {
                   
                  },
                  label: const Text(
                    'Convertir',
                    style: TextStyle(
                      color: Color.fromARGB(0, 0, 0, 0),
                    ),
                  ),
                ),

            const SizedBox(height: 20),
            const Text(
              'Resultado:',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
