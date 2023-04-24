import 'package:flutter/material.dart';
import 'components/category_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Museum")),
        backgroundColor: Colors.orange,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(Icons.person_2_rounded),
          )
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(40.0),
            child: Text(
              "Choose your category",
              style: TextStyle(fontSize: 30, fontFamily: 'RobotoMono'),
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  CategoryCard(
                    imgURl: "assets/images/exploringthespace.png",
                    title: "Art Gallery",
                  ),
                  CategoryCard(
                    imgURl: "assets/images/exploringthespace.png",
                    title: "WWI Exhibition",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  CategoryCard(
                    imgURl: "assets/images/exploringthespace.png",
                    title: "Exploring the space",
                  ),
                  CategoryCard(
                    imgURl: "assets/images/exploringthespace.png",
                    title: "Visual Show",
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
