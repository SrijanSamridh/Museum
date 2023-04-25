import 'package:flutter/material.dart';
import 'package:mmuseum/utils/constants.dart';

import '../../UserData/Models/user_model.dart';

class DisplayScreen extends StatefulWidget {
  const DisplayScreen({super.key});

  @override
  State<DisplayScreen> createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Here\'s Your pass'.toUpperCase()),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Text(
                'Pay \$25 AUD'.toUpperCase(),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FutureBuilder<Registions>(
              future: Registions().getData(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        height: size.height * 0.3,
                        width: size.width * 0.7,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/visualshows.png',
                              height: size.height * 0.2,
                              width: size.width * 0.2,
                            ),
                            Text(
                              "Hi!\n${snapshot.data!.user?.displayName}",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                    'Place: \n${snapshot.data!.exibitionPlace}',
                                    style: const TextStyle(
                                        fontSize: 10, color: Colors.black)),
                                Text(
                                    'Visitors Count: ${snapshot.data!.visitorsCount}',
                                    style: const TextStyle(
                                        fontSize: 10, color: Colors.black)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        height: size.height * 0.3,
                        width: size.width * 0.7,
                        decoration: const BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          children: [
                            Text("email: ${snapshot.data!.user?.email}"),
                            Text('Phone Number: ${snapshot.data!.phoneNumber}'),
                            // Text('Date: ${snapshot.data!.date}'),
                            Text('Day: ${snapshot.data!.day}'),
                            Text('Time: ${snapshot.data!.timeSlot}'),

                            Image.asset('assets/images/barcode.png'),
                          ],
                        ),
                      ),
                    ],
                  );
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                return const CircularProgressIndicator();
              },
            ),
          ),
          const Text(
            textAlign: TextAlign.center,
            'make sure to show this pass to the security guard at the entrance of the museum!\n\nThank you for visiting us!',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
