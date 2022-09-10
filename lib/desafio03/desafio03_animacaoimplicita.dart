import 'package:flutter/material.dart';

class Desafio03 extends StatefulWidget {
  const Desafio03({Key? key}) : super(key: key);

  @override
  State<Desafio03> createState() => _Desafio03State();
}

class _Desafio03State extends State<Desafio03> {
  bool isClick = true;
  final initial = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('desafio 03'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: AnimatedAlign(
          duration: const Duration(seconds: 1),
          alignment: isClick ? Alignment.topCenter : Alignment.bottomRight,
          child: GestureDetector(
            onTap: () {
              setState(() {
                isClick = !isClick;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              curve: Curves.ease,
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(isClick ? 0 : 60),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
