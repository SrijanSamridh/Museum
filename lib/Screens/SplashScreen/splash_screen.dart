import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../animationScreen/animaton.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => {
              if (FirebaseAuth.instance.currentUser == null)
                {Navigator.pushReplacementNamed(context, '/login')}
              else
                {Navigator.pushReplacementNamed(context, '/home')}
            });
  }
  @override
  Widget build(BuildContext context) {
    return animationScreen();
  }
}
