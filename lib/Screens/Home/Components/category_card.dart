import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 252, 252, 252),
      ),
      
      height: 150,
      width: 150,
      margin: const EdgeInsets.only(top: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon,
          color: Colors.black,
          size: 80,),
          Text(
            title,
            style: const TextStyle(fontSize: 15, fontFamily: 'RobotoMono', color: Colors.black),
          ),
        ],
      ),
    );
  }
}
