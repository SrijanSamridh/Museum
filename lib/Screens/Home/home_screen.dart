
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mmuseum/utils/constants.dart';

import '../../Components/drawer.dart';
import 'Components/body.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  User? user;

  @override
  void initState() {
    super.initState();
    User? newUser = FirebaseAuth.instance.currentUser;
    setState(() {
      user = newUser;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(user!),
      drawer: const MyDrawer(),
      body: const Body(),
      // bottomNavigationBar: const MyBottomNavBar(),
    );
  }
}

AppBar buildAppBar(dynamic user) {
  return AppBar(
    title: const Text(
      'Museum',
      style: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        letterSpacing: 2.0,
      ),
    ),
    backgroundColor: kPrimaryColor,
    // elevation: 0,
    leading: Builder(
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.0),
              color: Colors.white10,
            ),
            child: IconButton(
              icon: const Icon(
                Icons.widgets_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),
        );
      },
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: user != Null
            ? CircleAvatar(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(user.photoURL),
                ),
              )
            : const Icon(CupertinoIcons.person),
      )
    ],
  );
}
