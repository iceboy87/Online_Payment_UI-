import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class settings extends StatefulWidget {

  // final bool value;
  // final ValueChanged<bool> onChanged;

  const settings( {Key? key}):super(key: key);



  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {

  bool isSwitched = false;

  String dropdownvalue = 'English';
  var items = [
    'English',
    'Tamil',
    'Franch',
    'Hindi',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0063b1),
        title:  Text(
          "My Account",
          style: TextStyle(
              color: Colors.white,
              fontFamily: "assets/font/times_new_roman.ttf"),
        ),
      ),
      body: Column(
        children: [
          GestureDetector(onTap: (){},
            child: Container(
              height: 60,
              width: 400,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(Icons.translate_outlined),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Language"),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left:190),
                    child: DropdownButton(

                      // Initial Value
                      value: dropdownvalue,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(onTap: (){},
            child: Container(
              height: 60,
              width: 400,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(Icons.password_outlined),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Change App Passcode"),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(onTap: (){},
            child: Container(
              height: 60,
              width: 400,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(Icons.password_outlined),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Text("FingerPrint"),
                        Padding(
                          padding: const EdgeInsets.only(left: 190),
                          child: Switch(
                              value: isSwitched,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched = value;
                                });
                              }),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(onTap: (){},
            child: Container(
              height: 60,
              width: 400,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(Icons.phonelink_lock_outlined),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Manage mPin"),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(onTap: (){},
            child: Container(
              height: 60,
              width: 400,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(Icons.phonelink_lock_outlined),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Fund Transfer Enable/Disable"),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(onTap: (){},
            child: Container(
              height: 60,
              width: 400,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(Icons.send_time_extension_outlined),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Set Transactin Limits"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
