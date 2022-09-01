import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 120,
      width: 120,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade500,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(height: 5),
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade500,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.elliptical(60, 60),
                    //topLeft: Radius.elliptical(20, 20),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 5),
          Container(
            height: 100,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.deepPurple.shade500,
              borderRadius: const BorderRadius.only(
                topRight: Radius.elliptical(50, 50),
                bottomLeft: Radius.elliptical(50, 50),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
