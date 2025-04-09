import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(FuturoDiaryApp());
}

class FuturoDiaryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Futuro Diary',
      theme: ThemeData.dark(),
      home: FuturoDiaryScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FuturoDiaryScreen extends StatefulWidget {
  @override
  _FuturoDiaryScreenState createState() => _FuturoDiaryScreenState();
}

class _FuturoDiaryScreenState extends State<FuturoDiaryScreen> {
  final List<String> futureEntries = [
    "2045: Las ciudades flotantes comienzan a operar.",
    "2099: Primer contacto confirmado con una civilización interestelar.",
    "3020: La humanidad se convierte en una mente colectiva.",
    "2178: Se establece la primera colonia estable en Titán.",
    "2301: La IA toma el control de las decisiones políticas.",
    "2250: Vuelve la escritura a mano como arte sagrado.",
    "2133: Una tormenta solar reinicia la tecnología global."
  ];

  String currentEntry = "";

  void generateRandomEntry() {
    final random = Random();
    setState(() {
      currentEntry = futureEntries[random.nextInt(futureEntries.length)];
    });
  }

  @override
  void initState() {
    super.initState();
    generateRandomEntry();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Futuro Diary')),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(currentEntry, textAlign: TextAlign.center, style: TextStyle(fontSize: 22)),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: generateRandomEntry,
                child: Text('Ver otra entrada del futuro'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
