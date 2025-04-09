import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(DiarioApp());
}

class DiarioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diario del Futuro',
      theme: ThemeData.dark(),
      home: DiarioFuturo(),
    );
  }
}

class DiarioFuturo extends StatefulWidget {
  @override
  _DiarioFuturoState createState() => _DiarioFuturoState();
}

class _DiarioFuturoState extends State<DiarioFuturo> {
  final List<String> entradas = [
    "2045: La humanidad ha colonizado Marte.",
    "2101: Las máquinas sienten emociones.",
    "2028: El primer presidente IA gobierna Europa.",
    "2077: Los recuerdos pueden almacenarse digitalmente.",
    "2033: Se descubre vida en una luna de Júpiter.",
  ];

  String entradaActual = "";

  void generarEntrada() {
    final random = Random();
    setState(() {
      entradaActual = entradas[random.nextInt(entradas.length)];
    });
  }

  @override
  void initState() {
    super.initState();
    generarEntrada();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Diario del Futuro')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            entradaActual,
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: generarEntrada,
        child: Icon(Icons.refresh),
        tooltip: 'Nueva entrada',
      ),
    );
  }
}
