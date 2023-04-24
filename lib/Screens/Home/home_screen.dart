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
        title: const Text("Museum"),
        backgroundColor: Colors.orange,
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
                    title: "Art Gallery",
                    icon: Icons.art_track,
                  ),
                  CategoryCard(
                    title: "WWI Exhibition",
                    icon: Icons.art_track,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  CategoryCard(
                      title: "Exploring the space", icon: Icons.ac_unit),
                  CategoryCard(title: "Visual Show", icon: Icons.ac_unit),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
