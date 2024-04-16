import 'package:flutter/material.dart';

import '../home_page/Navication.dart';

class gas extends StatefulWidget {
  const gas({super.key});

  @override
  State<gas> createState() => _gasState();
}

class _gasState extends State<gas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0063b1),
        leading: IconButton(onPressed: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Navi()));
        }, icon: Icon(Icons.arrow_back)),
        title:  Text('Gas Booking',
            style: TextStyle(
                color: Colors.white,
                fontFamily:
                "assets/font/times_new_roman.ttf")),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                  height: 900,
                  width: 450,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/gas_1.png"),fit: BoxFit.fill
                    ),)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
