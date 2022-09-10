// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomExpanded extends StatefulWidget {
  bool isExpanded;
  int index;
  CustomExpanded({
    Key? key,
    required this.isExpanded,
    required this.index,
  }) : super(key: key);

  @override
  State<CustomExpanded> createState() => _CustomExpandedState();
}

class _CustomExpandedState extends State<CustomExpanded> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.isExpanded = !widget.isExpanded;
        });
      },
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'My expansion ${widget.index}',
              ),
              AnimatedRotation(
                duration: const Duration(milliseconds: 500),
                turns: widget.isExpanded ? 1 : 0.5,
                child: const Icon(Icons.expand_more_outlined),
              )
            ],
          ),
          AnimatedAlign(
            alignment: Alignment.center,
            duration: const Duration(milliseconds: 500),
            heightFactor: widget.isExpanded ? 0 : 1,
            curve: Curves.linearToEaseOut,
            child: SizedBox(
              height: 200,
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
                crossFadeState: !widget.isExpanded
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: const Duration(milliseconds: 500),
                secondCurve: Curves.linearToEaseOut,
                firstCurve: Curves.linearToEaseOut,
                sizeCurve: Curves.linearToEaseOut,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
