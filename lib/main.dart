import 'package:flutter/material.dart';
import 'Screens/Home/home_screen.dart';
import 'Screens/LoginScreen/login_screen.dart';
import 'Screens/SplashScreen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const MyHomePage(),
        '/login': (context) => const LoginScreen(),
        '/splash': (context) => const SplashScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

