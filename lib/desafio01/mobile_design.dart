import 'dart:developer';

import 'package:desafios_masterclass/desafio01/custom_logo.dart';
import 'package:flutter/material.dart';

class MobileDesign extends StatelessWidget {
  final BoxConstraints constraints;
  const MobileDesign({Key? key, required this.constraints}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: constraints.maxWidth,
      height: constraints.maxHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          const CustomLogo(),
          const SizedBox(height: 30),
          const Text(
            'Get your Money\n Under Control',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Manage your expenses.\nSeamlessly.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white54,
              fontSize: 19,
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              log('SIGN');
            },
            child: Container(
              alignment: Alignment.center,
              height: 60,
              width: constraints.maxWidth,
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade500,
                borderRadius: const BorderRadius.all(Radius.circular(6)),
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
          InkWell(
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              height: 60,
              width: constraints.maxWidth,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(6)),
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
          ),
          const SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              text: 'Already have an account? ',
              style: TextStyle(
                color: Colors.white,
              ),
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
    );
  }
}
