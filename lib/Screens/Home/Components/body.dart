import 'package:flutter/material.dart';
import 'package:mmuseum/utils/constants.dart';

import '../components/category_card.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Padding(
          padding: EdgeInsets.all(40.0),
          child: Text(
            'Welcome to the Museum !',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                CategoryCard(
                  imgURl: "assets/images/artgallery.png",
                  title: "Art Gallery",
                ),
                CategoryCard(
                  imgURl: "assets/images/exibition.png",
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
                  imgURl: "assets/images/visualshows.png",
                  title: "Visual Show",
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 20),
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                kPrimaryColor,
              ),
            ),
            onPressed: () => Navigator.pushNamed(context, '/book'),
            child: const Text('Book Now')),
      ],
    );
  }
}
