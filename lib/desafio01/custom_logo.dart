import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class CustomLogo extends StatefulWidget {
  const CustomLogo({Key? key}) : super(key: key);

  @override
  State<CustomLogo> createState() => _CustomLogoState();
}

class _CustomLogoState extends State<CustomLogo> {
  bool isLoading = false;
  double initialSize = 0.0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          print(isLoading);
          isLoading = !isLoading;
          print(isLoading);
        });
      },
      child: AnimatedContainer(
        curve: Curves.easeOut,
        duration: const Duration(seconds: 2),
        alignment: Alignment.center,
        height: 120,
        width: 120,
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedContainer(
                  curve: Curves.slowMiddle,
                  duration: const Duration(seconds: 2),
                  height: isLoading ? initialSize : 45,
                  width: isLoading ? initialSize : 45,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple.shade500,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(height: 5),
                AnimatedContainer(
                  curve: Curves.fastOutSlowIn,
                  duration: const Duration(seconds: 2),
                  height: isLoading ? initialSize : 45,
                  width: isLoading ? initialSize : 45,
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
            AnimatedContainer(
              curve: Curves.fastLinearToSlowEaseIn,
              duration: const Duration(seconds: 2),
              height: isLoading ? initialSize : 100,
              width: isLoading ? initialSize : 50,
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
      ),
    );
  }
}
