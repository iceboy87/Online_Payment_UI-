import 'package:flutter/material.dart';

import 'Navication.dart';
import 'more_page.dart';
class accounts extends StatefulWidget {
  const accounts({super.key});

  @override
  State<accounts> createState() => _accountsState();
}

class _accountsState extends State<accounts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0063b1),
        leading: IconButton(onPressed: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Navi()));
        }, icon: Icon(Icons.arrow_back)),
        title:  Text('Accounts',
            style: TextStyle(
                color: Colors.white,
                fontFamily:
                "assets/font/times_new_roman.ttf")),
        actions: [
          IconButton(onPressed: ()
          {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>all()));
          }
              , icon: Icon(Icons.more_vert_rounded))
        ],
      ),
      body: Container(
        height: 1000,
        width: 450,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff0063b1), Color(0xff9bc3d5),
            ]
          )
        ),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Container(
              height: 220,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(),
                color: Colors.white
              ),
              child: Column(
                children: [
                  SizedBox(height: 5,),
                  Text("Account Summary",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,fontFamily: "assets/font/times_new_roman.ttf"),),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Row(children: [
                      Text("Operative",style: TextStyle(color: Colors.blue,fontFamily: "assets/font/times_new_roman.ttf"),),
                      Padding(
                        padding: const EdgeInsets.only(left: 128),
                        child: Text("Total Balance",style: TextStyle(fontFamily: "assets/font/times_new_roman.ttf")),
                      ),
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(children: [
                      Text("(SB/CA/OD Account)",style: TextStyle(fontFamily: "assets/font/times_new_roman.ttf")),
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Text("₹ 1,789,505.55",style: TextStyle(fontFamily: "assets/font/times_new_roman.ttf")),
                      ),
                    ],),
                  ),
                  Divider(thickness: 2,),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Row(children: [
                      Text("Deposit",style: TextStyle(color: Colors.green,fontFamily: "assets/font/times_new_roman.ttf"),),
                      Padding(
                        padding: const EdgeInsets.only(left: 140),
                        child: Text("Total Balance",style: TextStyle(fontFamily: "assets/font/times_new_roman.ttf")),
                      ),
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(children: [
                      Text("(Fixed Accounts)",style: TextStyle(fontFamily: "assets/font/times_new_roman.ttf")),
                      Padding(
                        padding: const EdgeInsets.only(left: 89),
                        child: Text("₹ 1000",style: TextStyle(fontFamily: "assets/font/times_new_roman.ttf")),
                      ),
                    ],),
                  ),
                  Divider(thickness: 2,),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Row(children: [
                      Text("Loan",style: TextStyle(color: Colors.red,fontFamily: "assets/font/times_new_roman.ttf"),),
                      Padding(
                        padding: const EdgeInsets.only(left: 158),
                        child: Text("Total Balance",style: TextStyle(fontFamily: "assets/font/times_new_roman.ttf")),
                      ),
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(children: [
                      // Text("(Fixed Accounts)",),
                      Padding(
                        padding: const EdgeInsets.only(left: 210),
                        child: Text("₹ 1000",style: TextStyle(fontFamily: "assets/font/times_new_roman.ttf")),
                      ),
                    ],),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 185,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all()
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 20),
                        child: Text("Operative Accounts",
                            style: TextStyle(
                              color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: "assets/font/times_new_roman.ttf")),
                      ),
                      // Expanded(child: Icon(Icons.arrow_forward_ios_rounded))
                    ],
                  ),
                  SizedBox(height: 10,),
                  Divider(thickness: 2,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 15),
                        child: Text("Deposit Accounts",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: "assets/font/times_new_roman.ttf")),
                      ),
                      // Expanded(child: Icon(Icons.arrow_forward_ios_rounded))
                    ],
                  ),
                  SizedBox(height: 10,),
                  Divider(thickness: 2,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 15),
                        child: Text("Loan Accounts",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: "assets/font/times_new_roman.ttf"),),
                      ),
                      // Expanded(child: Icon(Icons.arrow_forward_ios_rounded))
                    ],
                  ),
                  SizedBox(height: 10,),

                ],
              ),
            ),
          ],
        ),
      ),
      // body: Container(
      //   height: 1000,
      //   width: 450,
      //   decoration: BoxDecoration(
      //     image: DecorationImage(image: AssetImage("assets/save.png"),fit: BoxFit.fill)
      //   ),
      // ),
    );
  }
}
