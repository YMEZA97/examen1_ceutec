import 'package:flutter/material.dart';

class CurrencyUi extends StatefulWidget {
  const CurrencyUi({super.key});

  @override
  State<CurrencyUi> createState() => _CurrencyUiState();
}

  




class _CurrencyUiState extends State<CurrencyUi> {

final TextEditingController controlador = TextEditingController();
  String selectmoneda = 'USD';
  double resultado = 0.0;
  final double lempirasaDolar = 0.041;
  final double dolaraLempiras = 24.3;  
  final double lempirasaEuro = 0.034;   
  final double euroaLempiras = 29.5;    

 void convertidor() {
    double input = double.tryParse(controlador.text) ?? 0.0;
    setState(() {
      if (selectmoneda == 'USD') {
        resultado = input * dolaraLempiras;
      } else if (selectmoneda == 'EUR') {
        resultado = input * euroaLempiras;
      } else if (selectmoneda == 'HNL A USD') {
        resultado = input * lempirasaDolar;
      } else if (selectmoneda == 'HNL A EUR') {
        resultado = input * lempirasaEuro;
      }
    });
  }



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
            TextField(
              controller: controlador,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Ingrese la cantidad en Lempiras',
              ),
            ),
           const SizedBox(height: 20),
            DropdownButton<String>(
              value: selectmoneda,
              items: <String>['USD', 'EUR', 'HNL to USD', 'HNL to EUR']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  selectmoneda = newValue!;
                });
              },
            ),
           const SizedBox(height: 20),
            ElevatedButton(
              onPressed: convertidor,
              child: const Text('Convertir'),
            ),
           const SizedBox(height: 20),
            Text(
              'Resultado: $resultado',
              style:const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
