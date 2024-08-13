import 'package:flutter/material.dart';

var total = "";

// List of items in our dropdown menu
const List<String> items = <String>[
  'Dolar',
  'Euro',
];

String dropdownValue = items.first;

TextEditingController n1 = TextEditingController();
TextEditingController n2 = TextEditingController();
GlobalKey<FormState> keyForm = GlobalKey();

class CurrencyUi extends StatefulWidget {
  const CurrencyUi({super.key});

  @override
  State<CurrencyUi> createState() => _HomePageState();
}

class _HomePageState extends State<CurrencyUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cambi de Divisas'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(30.0),
          child: Form(
            key: keyForm,
            child: formUI(),
          ),
        ),
      ),
    );
  }
}

formItemsDesign(item) {
  return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: ListTile(title: item));
}

Widget formUI() {
  return Column(children: <Widget>[
    formItemsDesign(TextField(
      controller: n1,
      textAlign: TextAlign.center,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      decoration: const InputDecoration(
          border: OutlineInputBorder(), labelText: 'Primer Valor'),
    )),
    formItemsDesign(TextField(
      controller: n2,
      textAlign: TextAlign.center,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      decoration: const InputDecoration(
          border: OutlineInputBorder(), labelText: 'Segundo Valor'),
    )),
    formItemsDesign(
      DropdownButton(
        value: dropdownValue,
        icon: const Icon(Icons.keyboard_arrow_down),
        onChanged: (newValue) {
          (() {
            dropdownValue = newValue.toString();
          });
        },
        items: items.map<DropdownMenuItem<String>>((String items) {
          return DropdownMenuItem<String>(
            value: items,
            child: Text(items),
          );
        }).toList(),
      ),
    ),
    formItemsDesign(Text(
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 30),
        "El cambio es de: ${total}")),
  ]);
}
