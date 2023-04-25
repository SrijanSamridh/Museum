import 'package:flutter/material.dart';
import 'package:mmuseum/utils/constants.dart';


// ignore: camel_case_types
class animationScreen extends StatefulWidget {
  const animationScreen({super.key});

  @override
  State<animationScreen> createState() => _animationScreenState();
}

// ignore: camel_case_types
class _animationScreenState extends State<animationScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TweenAnimationBuilder(
                  tween: Tween<double>(begin: 1, end: 0),
                  duration: const Duration(milliseconds: 3000),
                  curve: Curves.bounceOut,
                  builder: (context, value, child) {
                    return Transform.translate(
                      offset: Offset(0.0, -(value*500)),
                      child: child,
                    );
                  },
                  child: TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0, end: 1),
                    duration: const Duration(milliseconds: 15000),
                    curve: const Interval(0, 0.8, curve: Curves.bounceOut),
                    builder: (context, value, child) {
                      return Transform.scale(
                        scale: value*50,
                        child: child,
                      );
                    },
                    child: Center(
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          // gradient: kNewBg,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
 
          ],
        ), 
        );
  }
}
