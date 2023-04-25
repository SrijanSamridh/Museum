import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mmuseum/utils/constants.dart';

import '../../UserData/Models/user_model.dart';

class BookScreen extends StatefulWidget {
  const BookScreen({super.key});

  @override
  State<BookScreen> createState() => _BookScreenState();
}

enum ExhibitionPlace {
  artGallery,
  wwiExhibition,
  exploringTheSpace,
  visualShow
}

const List<String> days = <String>[
  'Monday',
  'Tuesday',
  'Wednesday',
  'Thursday',
  'Friday',
  'Saturday',
  'Sunday'
];
List<String> timeSlots = <String>[
  DateFormat('kk:mm').format(DateTime.now().add(const Duration(minutes: 30))),
  DateFormat('kk:mm').format(DateTime.now().add(const Duration(minutes: 60))),
  DateFormat('kk:mm').format(DateTime.now().add(const Duration(minutes: 90))),
  DateFormat('kk:mm').format(DateTime.now().add(const Duration(minutes: 120))),
];
List<String> date = <String>[
  DateFormat.yMMMd().format(DateTime.now()),
  DateFormat.yMMMd().format(DateTime.now().add(const Duration(days: 1))),
  DateFormat.yMMMd().format(DateTime.now().add(const Duration(days: 2))),
  DateFormat.yMMMd().format(DateTime.now().add(const Duration(days: 3))),
  DateFormat.yMMMd().format(DateTime.now().add(const Duration(days: 4))),
];

class _BookScreenState extends State<BookScreen> {
  final formKey = GlobalKey<FormState>(); //key for form
  TextEditingController exibitionPlaceController = TextEditingController();
  TextEditingController visitorsCountController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController dateTimeController = TextEditingController();
  ExhibitionPlace? _exhibitionPlace = ExhibitionPlace.artGallery;
  String dropdownDayValue = days.first;
  String dropdownTimeValue = timeSlots.first;
  String dropdownDateValue = date.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Pass'.toUpperCase()),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Text('Confirm your Entires'.toUpperCase()),
          ),
        ),
        Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ListTile(
                  title: const Text('Art Gallery'),
                  leading: Radio<ExhibitionPlace>(
                    value: ExhibitionPlace.artGallery,
                    groupValue: _exhibitionPlace,
                    onChanged: (ExhibitionPlace? value) {
                      setState(() {
                        _exhibitionPlace = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('WWI Exhibition'),
                  leading: Radio<ExhibitionPlace>(
                    value: ExhibitionPlace.wwiExhibition,
                    groupValue: _exhibitionPlace,
                    onChanged: (ExhibitionPlace? value) {
                      setState(() {
                        _exhibitionPlace = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Exploring the Space'),
                  leading: Radio<ExhibitionPlace>(
                    value: ExhibitionPlace.exploringTheSpace,
                    groupValue: _exhibitionPlace,
                    onChanged: (ExhibitionPlace? value) {
                      setState(() {
                        _exhibitionPlace = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Visual Show'),
                  leading: Radio<ExhibitionPlace>(
                    value: ExhibitionPlace.visualShow,
                    groupValue: _exhibitionPlace,
                    onChanged: (ExhibitionPlace? value) {
                      setState(() {
                        _exhibitionPlace = value;
                      });
                    },
                  ),
                ),
                TextFormField(
                  controller: visitorsCountController,
                  decoration: const InputDecoration(
                    labelText: 'Visitors Count',
                    hintText: 'Enter Visitors Count',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Visitors Count';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: phoneNumberController,
                  decoration: const InputDecoration(
                    labelText: 'Phone Number',
                    hintText: 'Enter Phone Number',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Phone Number';
                    }
                    return null;
                  },
                ),
                // dropdown
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Day: "),
                    DropdownButton<String>(
                      value: dropdownDayValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.white),
                      underline: Container(
                        height: 2,
                        color: Colors.white,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          dropdownDayValue = value!;
                        });
                      },
                      items: days.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text("Time: "),
                    DropdownButton<String>(
                      value: dropdownTimeValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.white),
                      underline: Container(
                        height: 2,
                        color: Colors.white,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          dropdownTimeValue = value!;
                        });
                      },
                      items: timeSlots
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value.toString()),
                        );
                      }).toList(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text("Date: "),
                    const SizedBox(
                      width: 25,
                    ),
                    DropdownButton<String>(
                          value: dropdownDateValue,
                          icon: const Icon(Icons.arrow_downward),
                          elevation: 16,
                          style: const TextStyle(color: Colors.white),
                          underline: Container(
                            height: 2,
                            color: Colors.white,
                          ),
                          onChanged: (String? value) {
                            // This is called when the user selects an item.
                            setState(() {
                              dropdownDateValue = value!;
                            });
                          },
                          items: date
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value.toString()),
                            );
                          }).toList(),
                        ),
                  ],
                ),
                // TextFormField(
                //   controller: dateTimeController,
                //   decoration: const InputDecoration(
                //     labelText: 'Date Time',
                //     hintText: 'Enter Date Time',
                //   ),
                //   validator: (value) {
                //     if (value == null || value.isEmpty) {
                //       return 'Please Enter Date Time';
                //     }
                //     dateTimeController.text = DateTime.now().toString();
                //     return null;
                //   },
                // ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                    ),
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        await Registions().setData(
                          newExibitionPlace: _exhibitionPlace.toString(),
                          newVisitorsCount:
                              int.parse(visitorsCountController.text),
                          newPhoneNumber: int.parse(phoneNumberController.text),
                          newDay: dropdownDayValue,
                          newTimeSlot: dropdownTimeValue,
                        );
                        // ignore: use_build_context_synchronously
                        Navigator.pushReplacementNamed(context, '/success');
                      }
                    },
                    child: const Text('Book Now')),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
