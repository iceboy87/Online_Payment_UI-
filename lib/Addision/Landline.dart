import 'package:flutter/material.dart';

import '../home_page/Navication.dart';
class Landline extends StatefulWidget {
  const Landline({super.key});

  @override
  State<Landline> createState() => _LandlineState();
}

class _LandlineState extends State<Landline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0063b1),
        leading: IconButton(onPressed: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Navi()));
        }, icon: Icon(Icons.arrow_back)),
        title:  Text('BroadBand/Landline',
            style: TextStyle(
                color: Colors.white,
                fontFamily:
                "assets/font/times_new_roman.ttf")),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 1400,
              width: 450,
              decoration: BoxDecoration(
                  color: Colors.white
              ),
              child: Column(
                children: [
                  Container(
                      height: 800,
                      width: 450,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/land.jpg"),fit: BoxFit.fill
                        ),)
                  ),
                  Container(
                      height: 550,
                      width: 450,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/land_1.png"),fit: BoxFit.cover
                        ),)
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
