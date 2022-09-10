import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Desafio04 extends StatefulWidget {
  const Desafio04({Key? key}) : super(key: key);

  @override
  State<Desafio04> createState() => _Desafio04State();
}

class _Desafio04State extends State<Desafio04> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Desafio 04')),
    );
  }
}
