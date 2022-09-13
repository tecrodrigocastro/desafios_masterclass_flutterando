import 'package:desafios_masterclass/desafio01/desafio01.dart';
import 'package:desafios_masterclass/desafio03/desafio03_animacaoimplicita.dart';
import 'package:desafios_masterclass/desafio04/controladas04.dart';
import 'package:desafios_masterclass/desafio04/desafio04.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const Desafio04(),
    );
  }
}
