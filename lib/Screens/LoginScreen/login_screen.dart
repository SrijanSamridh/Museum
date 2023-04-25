import 'package:flutter/material.dart';
import 'package:mmuseum/authentication.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: Row(
                children: const [
                  Text(
                    'Hello \nThere',
                    style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 164, 90)),
                  ),
                  Text(
                    '\n!',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255)),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () => signInWithGoogle(context),
                  child: Image.asset(
                    'assets/images/Google.png',
                    width: 50,
                    height: 50,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Continue with Google",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
