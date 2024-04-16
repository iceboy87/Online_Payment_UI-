import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home_page/Navication.dart';

class insurance extends StatefulWidget {
  const insurance({super.key});

  @override
  State<insurance> createState() => _insuranceState();
}

class _insuranceState extends State<insurance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0063b1),
        leading: IconButton(onPressed: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Navi()));
        }, icon: Icon(Icons.arrow_back)),
        title:  Text("Insurance",style: TextStyle(
            color: Colors.white,
            fontFamily:
            "assets/font/times_new_roman.ttf")),
      ),

      //appbar****************************************************

      body:
      Container(
        height: 1000,
        width: 450,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.02, 0.5],
                colors: [Color(0xff0063b1), Color(0xff9bc3d5)])
        ),

        child: Padding(
          padding: const EdgeInsets.only(top: 100,left: 20,right: 20),
          child: Container(
            height: 500,
            width: 400,
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 10,),
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Color(0xffddf7f1)
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                              width: 100,
                              child: Image(image: AssetImage("assets/bike.png"))),
                          Text("Bike",style: TextStyle(
                              fontFamily:
                              "assets/font/times_new_roman.ttf")),
                          Text("Insurance",style: TextStyle(
                              fontFamily:
                              "assets/font/times_new_roman.ttf")),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Color(0xffdff2fb)
                      ),
                      child: Column(
                        children: [
                          Container(
                              height: 80,
                              width: 100,
                              child: Image(image: AssetImage("assets/car.png"))),
                          Text("Car",style: TextStyle(
                              fontFamily:
                              "assets/font/times_new_roman.ttf")),
                          Text("Insurance",style: TextStyle(
                              fontFamily:
                              "assets/font/times_new_roman.ttf")),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Color(0xffedf3fd)
                      ),
                      child: Column(
                        children: [
                          Container(
                              height: 80,
                              width: 100,
                              child: Image(image: AssetImage("assets/health.png"))),
                          Text("Health",style: TextStyle(
                              fontFamily:
                              "assets/font/times_new_roman.ttf")),
                          Text("Insurance",style: TextStyle(
                              fontFamily:
                              "assets/font/times_new_roman.ttf")),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Color(0xfff8f3f9)
                        ),
                        child: Column(
                          children: [
                            Container(
                                height: 80,
                                width: 100,
                                child: Image(image: AssetImage("assets/travel.png"))),
                            Text("Travel",style: TextStyle(
                                fontFamily:
                                "assets/font/times_new_roman.ttf")),
                            Text("Insurance",style: TextStyle(
                                fontFamily:
                                "assets/font/times_new_roman.ttf")),
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Color(0xfffcf6f3)
                        ),
                        child: Column(
                          children: [
                            Container(
                                height: 80,
                                width: 100,
                                child: Image(image: AssetImage("assets/tearm.png"))),
                            Text("Tern life",style: TextStyle(
                                fontFamily:
                                "assets/font/times_new_roman.ttf")),
                            Text("Insurance",style: TextStyle(
                                fontFamily:
                                "assets/font/times_new_roman.ttf")),
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Color(0xfffaf1f1)
                        ),
                        child: Column(
                          children: [
                            Container(
                                height: 80,
                                width: 100,
                                child: Image(image: AssetImage("assets/investment.png"))),
                            Text("Investment",style: TextStyle(
                                fontFamily:
                                "assets/font/times_new_roman.ttf")),
                            Text("Plan",style: TextStyle(
                                fontFamily:
                                "assets/font/times_new_roman.ttf")),
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
