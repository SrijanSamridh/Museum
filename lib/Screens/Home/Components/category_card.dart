import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.title,
    required this.imgURl,
  });
  final String title;
  final String imgURl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 252, 252, 252),
      ),
      height: 150,
      width: 150,
      margin: const EdgeInsets.only(top: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imgURl,
            height: 80,
            width: 80,
          ),
          Text(
            title,
            style: const TextStyle(
                fontSize: 15, fontFamily: 'RobotoMono', color: Colors.black),
          ),
        ],
      ),
    );
  }
}
