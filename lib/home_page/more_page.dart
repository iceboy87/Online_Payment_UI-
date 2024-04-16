import 'package:flutter/material.dart';

import 'Navication.dart';
class all extends StatefulWidget {
  const all({super.key});

  @override
  State<all> createState() => _allState();
}

class _allState extends State<all> {

  List abc = [
    'Aadhaar Service',
    'ATM/Branch Locator',
    'Complaints',
    'EMI Calculator',
    'FAQs',
    'Feedback',
    'Foxex Rates',
    'Holiday List',
    'Loan Services',
    'Offers & Products',
    'Benefits of Governments Schemes',
    'Izet Credit Card Portal',
    'Apply for Izet Credit Card',
    'Refer a Friend',
    'Settings',
    'Digi Locker',
    'Izet ATM Schemes',
    'Door Step Banking',
  ];
  int select=0;
  void press(int index) {
    setState(() {
      select = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0063b1),
        leading: IconButton(onPressed: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Navi()));
        }, icon: Icon(Icons.arrow_back)),
        title:  Text("More",
            style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily:
            "assets/font/times_new_roman.ttf")
        ),
      ),
      body: ListView.builder(
          itemCount: abc.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: (){
                press(index);
              },
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    abc[index],
                    style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily:
                    "assets/font/times_new_roman.ttf",
                        color: select==index?Colors.blueAccent:Colors.black,
                        fontSize: 14),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
