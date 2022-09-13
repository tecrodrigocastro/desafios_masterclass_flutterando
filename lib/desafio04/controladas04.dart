import 'package:desafios_masterclass/desafio04/custom_controladas.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AnimacaoControladas04 extends StatefulWidget {
  const AnimacaoControladas04({Key? key}) : super(key: key);

  @override
  State<AnimacaoControladas04> createState() => _AnimacaoImplicita04State();
}

class _AnimacaoImplicita04State extends State<AnimacaoControladas04>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<double> _turns;
  late final Animation<double> _heigthFactor;
  bool isExpanded = false;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _turns = Tween<double>(begin: 1, end: 0.5).animate(controller);
    _heigthFactor = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.linearToEaseOut,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ANIMAÇÃO IMPLICITA'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: AnimatedBuilder(
          animation: controller,
          builder: (context, child) {
            return ListView.separated(
              itemCount: 20,
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    print(index);
                    if (controller.value > 0) {
                      controller.reverse();
                      setState(() {
                        controller;
                      });
                    } else {
                      controller.forward();
                      setState(() {
                        controller;
                      });
                    }
                  },
                  child: CustomControladas(
                    controller: controller,
                    index: index,
                    heigthFactor: _heigthFactor,
                    turns: _turns,
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
