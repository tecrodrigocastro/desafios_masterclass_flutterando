import 'dart:developer';

import 'package:desafios_masterclass/desafio01/custom_logo.dart';
import 'package:desafios_masterclass/desafio01/desktop_design.dart';
import 'package:desafios_masterclass/desafio01/mobile_design.dart';
import 'package:flutter/material.dart';

class Desafio01 extends StatefulWidget {
  const Desafio01({Key? key}) : super(key: key);

  @override
  State<Desafio01> createState() => _Desafio01State();
}

class _Desafio01State extends State<Desafio01> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 700) {
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: MobileDesign(constraints: constraints),
              ),
            );
          } else {
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: DesktopDesign(constraints: constraints),
              ),
            );
          }
        },
      ),
    );
  }
}
