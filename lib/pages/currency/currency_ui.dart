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

  final double dolaraLempiras = 24.72;
  
  final double euroaLempiras = 27;

  void convertidor() {
    double input = double.tryParse(controlador.text) ?? 0.0;
    setState(() {
      if (selectmoneda == 'USD') {
        resultado = input * dolaraLempiras;
      } else if (selectmoneda == 'EUR') {
        resultado = input * euroaLempiras;
      } 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Tasa de Cambio'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
 
          children: [

 Padding(
              padding: const EdgeInsets.all(16).copyWith(bottom: 30),
              child:const Text(
                "Seleccione la Moneda",
                style: TextStyle(fontSize: 34),
              ),
            ),


 DropdownButton<String>(
              value: selectmoneda,
              items: <String>['USD', 'EUR']
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

  const SizedBox(height: 30),

            TextField(
              controller: controlador,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Ingrese la cantidad que desea convertir',
              ),
            ),


          
           
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: convertidor,
              child: const Text('Convertir a L'),
            ),
            const SizedBox(height: 50),
          const Text(
              "Resultado:",
              style: TextStyle(fontSize: 30),
            ),

   const SizedBox(height: 50),
            Text(
              "L.$resultado",
              style: const TextStyle(fontSize: 40),
            ),


          ],
        ),
      ),
    );
  }
}
