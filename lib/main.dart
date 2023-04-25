import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Screens/BookingScreen/book_screen.dart';
import 'Screens/BookingScreen/display_screen.dart';
import 'Screens/Home/home_screen.dart';
import 'Screens/LoginScreen/login_screen.dart';
import 'Screens/SplashScreen/splash_screen.dart';
import 'Screens/SplashScreen/success.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      initialRoute: '/splash',
      routes: {
        '/home': (context) => const MyHomePage(),
        '/login': (context) => const LoginScreen(),
        '/splash': (context) => const SplashScreen(),
        '/book': (context) => const BookScreen(),
        '/display': (context) => const DisplayScreen(),
        '/success': (context) => const SuccessScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

