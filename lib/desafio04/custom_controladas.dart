// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomControladas extends StatefulWidget {
  AnimationController controller;
  int index;
  Animation<double> turns;
  Animation<double> heigthFactor;
  CustomControladas({
    Key? key,
    required this.controller,
    required this.index,
    required this.turns,
    required this.heigthFactor,
  }) : super(key: key);

  @override
  State<CustomControladas> createState() => _CustomControladasState();
}

class _CustomControladasState extends State<CustomControladas> {
  //late final Animation<double> _turns;
  //late final Animation<double> _heigthFactor;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Animação controladas ${widget.index}'),
            AnimatedRotation(
              turns: widget.turns.value,
              duration: const Duration(milliseconds: 500),
              child: const Icon(Icons.expand_more),
            )
          ],
        ),
        AnimatedAlign(
          alignment: Alignment.topCenter,
          duration: const Duration(milliseconds: 500),
          heightFactor: widget.heigthFactor.value,
          child: AnimatedCrossFade(
            firstChild: Column(
              children: const [
                FlutterLogo(
                  size: 50,
                ),
                Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop '),
              ],
            ),
            secondChild: const SizedBox.shrink(),
            crossFadeState: widget.controller.value > 0
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: const Duration(milliseconds: 500),
          ),
        ),
      ],
    );
  }
}
