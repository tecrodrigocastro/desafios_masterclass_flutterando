import 'dart:developer';

import 'package:desafios_masterclass/desafio01/custom_logo.dart';
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
                child: MobileDesign(
                  constraints: constraints,
                ),
              ),
            );
          } else {
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  height: constraints.maxHeight,
                  width: constraints.maxWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          CustomLogo(),
                          SizedBox(height: 30),
                          Text(
                            'Get your Money\n Under Control',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Manage your expenses.\nSeamlessly.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 23,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 100),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              log('SIGN');
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 70,
                              width: 300,
                              decoration: BoxDecoration(
                                color: Colors.deepPurple.shade500,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(6)),
                              ),
                              child: const Text(
                                'Sign Up with Email ID',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            alignment: Alignment.center,
                            height: 70,
                            width: 300,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.network(
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/2048px-Google_%22G%22_Logo.svg.png',
                                  height: 20,
                                  width: 20,
                                ),
                                const SizedBox(width: 10),
                                const Text(
                                  'Sign Up with Google',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          RichText(
                            text: const TextSpan(
                              text: 'Already have an account? ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                              children: [
                                TextSpan(
                                  text: 'Sign In',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
