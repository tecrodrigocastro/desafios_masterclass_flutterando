import 'package:desafios_masterclass/desafio04/custom_expanded_tile.dart';
import 'package:flutter/material.dart';

class Desafio04 extends StatefulWidget {
  const Desafio04({Key? key}) : super(key: key);

  @override
  State<Desafio04> createState() => _Desafio04State();
}

class _Desafio04State extends State<Desafio04> {
  bool _isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Desafio 04'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.separated(
          itemCount: 40,
          separatorBuilder: (context, index) => const SizedBox(height: 10),
          itemBuilder: (context, index) {
            return CustomExpanded(
              isExpanded: _isExpanded,
              index: index,
            );
          },
        ),
      ),
    );
  }
}
