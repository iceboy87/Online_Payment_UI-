import 'package:flutter/material.dart';

import '../home_page/Navication.dart';

class eletricity extends StatefulWidget {
  const eletricity({super.key});

  @override
  State<eletricity> createState() => _eletricityState();
}

class _eletricityState extends State<eletricity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0063b1),
        leading: IconButton(onPressed: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Navi()));
        }, icon: Icon(Icons.arrow_back)),
        title:  Text('Electricity Pay',
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
                //image: DecorationImage(
                  //image: AssetImage("assets/electricity.png"),fit: BoxFit.fill
                ),
              child: Column(
                children: [
                  Container(
                    height: 800,
                    width: 450,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/electricity.png"),fit: BoxFit.fill
                  ),)
                  ),
                  Container(
                    height: 550,
                    width: 450,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/electricity_1.png"),fit: BoxFit.cover
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
