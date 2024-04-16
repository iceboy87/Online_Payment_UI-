import "package:carousel_slider/carousel_slider.dart";
import "package:dots_indicator/dots_indicator.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:untitled/Addision/Electricity%20pay.dart";
import "package:untitled/Login.dart";
import "package:untitled/Profile/Settings.dart";
import "package:untitled/Profile/profile.dart";
import "package:untitled/home_a/insurance.dart";
import "package:untitled/home_a/mobile_recharge.dart";
import "package:untitled/home_page/Accounts.dart";

import "../Addision/DTH.dart";
import "../Addision/Landline.dart";
import "../Addision/fastTag.dart";
import "../Addision/gas.dart";
import "../home_a/Fund Transfer.dart";
import "../home_a/Mobile_Transfer.dart";
import "../home_a/Upi Page.dart";
import "../home_a/a_c.dart";

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int currentN=0;

  List N= [
    "assets/ad_1.png",
    "assets/ad_2.png",
    "assets/ad_3.png",
    "assets/ad_4.jpg",
    "assets/ad_5.png",
    "assets/ad_6.png",
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => profile()));
            },
            icon: Icon(CupertinoIcons.profile_circled)),
        title: Padding(
          padding: const EdgeInsets.only(left: 100),
          child: Container(
              height: 50,
              width: 100,
              child: Image(
                image: AssetImage("assets/images.png"),
              )),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => settings()));
                  },
                  icon: Icon(Icons.settings)),
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => login()));
                  },
                  icon: Icon(CupertinoIcons.power)),
            ],
          )
        ],
      ),
      body: Container(
        height: 1000,
        width: 450,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff0063b1), Color(0xff9bc3d5)]),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Center(
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: "assets/font/times_new_roman.ttf"),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: 200,
                  width: 390,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,

                          colors: [Color(0xff0063b1), Color(0xff9bc3d5)]),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 70,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Text(
                                  "1345******52324",
                                  style: TextStyle(
                                    color: Colors.white,
                                      fontSize: 20,
                                      fontFamily:
                                          "assets/font/times_new_roman.ttf"),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              // Container(
                              //     height: 50,
                              //   width: 50,
                              //   child: Text(".",style: TextStyle(color: Colors.green,fontSize: 50),)),
                              Text("SAVINGS",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily:
                                          "assets/font/times_new_roman.ttf")),
                              Text("."),
                              Text("Default",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily:
                                          "assets/font/times_new_roman.ttf")),

                            ],
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   width: 30,
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.only(bottom:70),
                      //   child: Text(".",style: TextStyle(color: Colors.green,fontSize: 100),),
                      // ),
                      // Text("SAVINGS"),
                      // Text("."),
                      // Text("Default"),
                      // SizedBox(
                      //   width: 30,
                      // ),
                      Row(
                        children: [
                          Center(
                              child: Padding(
                            padding: const EdgeInsets.only(left: 120),
                            child: Text(
                              "₹ 1,789,505.55",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: "assets/font/times_new_roman.ttf"),
                            ),
                          )),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 70, top: 20),
                        child: IntrinsicHeight(
                          child: Row(
                            children: [
                              GestureDetector(
                                  onTap: () {},
                                  child: Text('View Transaction',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily:
                                              "assets/font/times_new_roman.ttf"))),
                              VerticalDivider(
                                color: Colors.white,
                                thickness: 2,
                              ),
                              GestureDetector(
                                  onTap: () {},
                                  child: Text('Mini Statement',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily:
                                              "assets/font/times_new_roman.ttf"))),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              //********************* Yellow card

              SizedBox(height: 20),
              Text("Pay Now",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: "assets/font/times_new_roman.ttf"),),
              SizedBox(height: 20),
              Container(
                height: 300,
                width: 390,
                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 10),
                      child:
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => h_a()));
                            },
                            child: Container(
                              height: 150,
                              width: 70,
                              child: Column(
                                children: [
                                  Image(
                                    image: AssetImage(
                                      "assets/My_bank.png",
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                  Text("My",
                                      style: TextStyle(
                                          fontFamily:
                                              "assets/font/times_new_roman.ttf")),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text("Accounts",
                                      style: TextStyle(
                                          fontFamily:
                                              "assets/font/times_new_roman.ttf")),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 20,),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => fund()));
                            },
                            child: Container(
                              height: 150,
                              width: 70,
                              child: Column(
                                children: [
                                  Image(image: AssetImage("assets/fund.png")),
                                  Text("Bank",
                                      style: TextStyle(
                                          fontFamily:
                                              "assets/font/times_new_roman.ttf")),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text("Transfer",
                                      style: TextStyle(
                                          fontFamily:
                                              "assets/font/times_new_roman.ttf")),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>in_page()));
                            },
                              child: Container(
                                height: 150,
                                width: 70,
                                child: Column(
                                  children: [
                                    Image(image: AssetImage("assets/phone.png")),
                                    Text(
                                      "Mobile",
                                      style: TextStyle(
                                          fontFamily:
                                              "assets/font/times_new_roman.ttf"),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text("Transfer",
                                        style: TextStyle(
                                            fontFamily:
                                                "assets/font/times_new_roman.ttf")),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => Upi()));
                              },
                              child: Container(
                                height: 150,
                                width: 70,
                                child: Column(
                                  children: [
                                    Image(image: AssetImage("assets/upi.png")),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text("UPI",
                                        style: TextStyle(
                                            fontFamily:
                                                "assets/font/times_new_roman.ttf")),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: GestureDetector(onTap: ()
                            {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>insurance()));
                            },
                              child: Container(
                                height: 90,
                                width: 75,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Image(image: AssetImage("assets/insurance.png")),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text("Insurance",
                                        style: TextStyle(
                                            fontFamily:
                                                "assets/font/times_new_roman.ttf")),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            height: 100,
                            width: 70,
                            child: Column(
                              children: [
                                Image(image: AssetImage("assets/deposits.png")),
                                Text("Deposits",
                                    style: TextStyle(
                                        fontFamily:
                                            "assets/font/times_new_roman.ttf")),
                              ],
                            ),
                          ),
                          SizedBox(width: 15,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>recharge()));
                            },
                              child: Container(
                                height: 100,
                                width: 70,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 18,
                                    ),
                                    Image(image: AssetImage("assets/recharge.png")),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "Recharge",
                                      style: TextStyle(
                                          fontFamily:
                                              "assets/font/times_new_roman.ttf"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text("People",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: "assets/font/times_new_roman.ttf"),),
              SizedBox(height: 20),
              Container(
                height: 350,
                width: 390,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 10),
                      child:
                      Row(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                CircleAvatar(
                                    radius: (40),
                                    backgroundColor: Colors.white,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.asset("assets/i.png"),
                                    )),
                                Text("Iswarya",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: "assets/font/times_new_roman.ttf"),),
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            child: Column(
                              children: [
                                CircleAvatar(
                                    radius: (40),
                                    backgroundColor: Colors.white,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.asset("assets/v.png"),
                                    )),
                                Text("Vignesh",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: "assets/font/times_new_roman.ttf"),),
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            child: Column(
                              children: [
                                CircleAvatar(
                                    radius: (40),
                                    backgroundColor: Colors.white,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.asset("assets/m.png"),
                                    )),
                                Text("Manisha",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: "assets/font/times_new_roman.ttf"),),
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            child: Column(
                              children: [
                                CircleAvatar(
                                    radius: (40),
                                    backgroundColor: Colors.white,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.asset("assets/b.png"),
                                    )),
                                Text("bhuvanesh",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: "assets/font/times_new_roman.ttf"),),
                              ],
                            ),
                          ),
                  ],
                ),

              ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 10),
                      child:
                      Row(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                CircleAvatar(
                                    radius: (40),
                                    backgroundColor: Colors.white,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.asset("assets/k.png"),
                                    )),
                                Text("Kalpana",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: "assets/font/times_new_roman.ttf"),),
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            child: Column(
                              children: [
                                CircleAvatar(
                                    radius: (40),
                                    backgroundColor: Colors.white,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.asset("assets/r.png"),
                                    )),
                                Text("Rahul",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: "assets/font/times_new_roman.ttf"),),
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            child: Column(
                              children: [
                                CircleAvatar(
                                    radius: (40),
                                    backgroundColor: Colors.white,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.asset("assets/s.png"),
                                    )),
                                Text("Santhosh",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: "assets/font/times_new_roman.ttf"),),
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            child: Column(
                              children: [
                                CircleAvatar(
                                    radius: (40),
                                    backgroundColor: Colors.white,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.asset("assets/v.png"),
                                    )),
                                Text("Vijay",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: "assets/font/times_new_roman.ttf"),),
                              ],
                            ),
                          ),
                        ],
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 10),
                      child:
                      Row(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                CircleAvatar(
                                    radius: (40),
                                    backgroundColor: Colors.white,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.asset("assets/z.png"),
                                    )),
                                Text("Zainab",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: "assets/font/times_new_roman.ttf"),),
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            child: Column(
                              children: [
                                CircleAvatar(
                                    radius: (40),
                                    backgroundColor: Colors.white,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.asset("assets/g.png"),
                                    )),
                                Text("Guna",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: "assets/font/times_new_roman.ttf"),),
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            child: Column(
                              children: [
                                CircleAvatar(
                                    radius: (40),
                                    backgroundColor: Colors.white,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.asset("assets/b.png"),
                                    )),
                                Text("Balu",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: "assets/font/times_new_roman.ttf"),),
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            child: Column(
                              children: [
                                CircleAvatar(
                                    radius: (40),
                                    backgroundColor: Colors.white,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.asset("assets/r.png"),
                                    )),
                                Text("Ravi",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: "assets/font/times_new_roman.ttf"),),
                              ],
                            ),
                          ),
                        ],
                      ),

                    ),






              // Center(
              //   child:
              //   Padding(
              //     padding: const EdgeInsets.only(left: 13),
              //     child: Container(
              //       height: 650,
              //       width: 380,
              //       child: Column(
              //         children: [
              //           // Row(
              //           //   children: [
              //           //     // Padding(
              //           //     //   padding: const EdgeInsets.all(8.0),
              //           //     //   child: GestureDetector(onTap: (){
              //           //     //     Navigator.push(context, MaterialPageRoute(builder: (context)=>h_a()));
              //           //     //   },
              //           //     //     child: Container(
              //           //     //       height: 150,
              //           //     //       width: 70,
              //           //     //       child: Column(
              //           //     //         children: [
              //           //     //           Image(image: AssetImage(
              //           //     //               "assets/My_bank.png",
              //           //     //           ),fit: BoxFit.fill,
              //           //     //           ),
              //           //     //           Text("My",style: TextStyle(fontFamily: "assets/font/times_new_roman.ttf")),
              //           //     //           SizedBox(
              //           //     //             height: 3,
              //           //     //           ),
              //           //     //           Text("Accounts",style: TextStyle(fontFamily: "assets/font/times_new_roman.ttf")),
              //           //     //         ],
              //           //     //       ),
              //           //     //     ),
              //           //     //   ),
              //           //     // ),
              //           //     // SizedBox(
              //           //     //   width: 5,
              //           //     // ),
              //           //     // Padding(
              //           //     //   padding: const EdgeInsets.all(8.0),
              //           //     //   child: GestureDetector(onTap: (){
              //           //     //     Navigator.push(context, MaterialPageRoute(builder: (context)=>fund()));
              //           //     //   },
              //           //     //     child: Container(
              //           //     //       height: 150,
              //           //     //       width: 70,
              //           //     //       child: Column(
              //           //     //         children: [
              //           //     //           Image(image: AssetImage("assets/fund.png")),
              //           //     //           Text("Fund",style: TextStyle(fontFamily: "assets/font/times_new_roman.ttf")),
              //           //     //           SizedBox(
              //           //     //             height: 3,
              //           //     //           ),
              //           //     //           Text("Transfer",style: TextStyle(fontFamily: "assets/font/times_new_roman.ttf")),
              //           //     //         ],
              //           //     //       ),
              //           //     //     ),
              //           //     //   ),
              //           //     // ),
              //           //     // SizedBox(
              //           //     //   width: 5,
              //           //     // ),
              //           //     // Padding(
              //           //     //   padding: const EdgeInsets.all(8.0),
              //           //     //   child: Container(
              //           //     //     height: 150,
              //           //     //     width: 70,
              //           //     //     child: Column(
              //           //     //       children: [
              //           //     //         Image(image: AssetImage("assets/card.png")),
              //           //     //         Text("Card",style: TextStyle(fontFamily: "assets/font/times_new_roman.ttf"),),
              //           //     //         SizedBox(
              //           //     //           height: 3,
              //           //     //         ),
              //           //     //         Text("Services",style: TextStyle(fontFamily: "assets/font/times_new_roman.ttf")),
              //           //     //       ],
              //           //     //     ),
              //           //     //   ),
              //           //     // ),
              //           //     // SizedBox(
              //           //     //   width: 5,
              //           //     // ),
              //           //     // Padding(
              //           //     //   padding: const EdgeInsets.all(8.0),
              //           //     //   child: GestureDetector(onTap: (){
              //           //     //     Navigator.push(context, MaterialPageRoute(builder: (context)=>Upi()));
              //           //     //   },
              //           //     //     child: Container(
              //           //     //       height: 150,
              //           //     //       width: 70,
              //           //     //       child: Column(
              //           //     //         children: [
              //           //     //           Image(image: AssetImage("assets/upi.png")),
              //           //     //           SizedBox(height: 20,),
              //           //     //           Text("UPI",style: TextStyle(fontFamily: "assets/font/times_new_roman.ttf")),
              //           //     //         ],
              //           //     //       ),
              //           //     //     ),
              //           //     //   ),
              //           //     // ),
              //           //   ],
              //           // ),
              //           Row(
              //             children: [
              //               Padding(
              //                 padding: const EdgeInsets.all(8.0),
              //                 child: Container(
              //                   height: 150,
              //                   width: 70,
              //                   child: Column(
              //                     children: [
              //                       SizedBox(height: 8,),
              //                       Image(image: AssetImage(
              //                         "assets/Utility pay.png",
              //                       ),fit: BoxFit.fill,
              //                       ),
              //                       SizedBox(height: 20,),
              //                       Text("Utility",style: TextStyle(fontFamily: "assets/font/times_new_roman.ttf")),
              //                       SizedBox(
              //                         height: 3,
              //                       ),
              //                       Text("Payments",style: TextStyle(fontFamily: "assets/font/times_new_roman.ttf")),
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 5,
              //               ),
              //               Padding(
              //                 padding: const EdgeInsets.all(8.0),
              //                 child: Container(
              //                   height: 150,
              //                   width: 70,
              //                   child: Column(
              //                     children: [
              //                       Image(image: AssetImage("assets/market pay.png")),
              //                       SizedBox(
              //                         height: 7,
              //                       ),
              //                       Text("Market",style: TextStyle(fontFamily: "assets/font/times_new_roman.ttf")),
              //                       SizedBox(
              //                         height: 3,
              //                       ),
              //                       Text("Place",style: TextStyle(fontFamily: "assets/font/times_new_roman.ttf")),
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 5,
              //               ),
              //               Padding(
              //                 padding: const EdgeInsets.all(8.0),
              //                 child: Container(
              //                   height: 150,
              //                   width: 70,
              //                   child: Column(
              //                     children: [
              //                       Image(image: AssetImage("assets/cheque.png")),
              //                       Text("Cheque",style: TextStyle(fontFamily: "assets/font/times_new_roman.ttf")),
              //                       SizedBox(
              //                         height: 3,
              //                       ),
              //                       Text("Services",style: TextStyle(fontFamily: "assets/font/times_new_roman.ttf")),
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //               // SizedBox(
              //               //   width: 5,
              //               // ),
              //               // Padding(
              //               //   padding: const EdgeInsets.all(8.0),
              //               //   child: Container(
              //               //     height: 150,
              //               //     width: 70,
              //               //     child: Column(
              //               //       children: [
              //               //         SizedBox(height: 25,),
              //               //         Image(image: AssetImage("assets/insurance.png")),
              //               //         SizedBox(height: 20,),
              //               //         Text("Insurance",style: TextStyle(fontFamily: "assets/font/times_new_roman.ttf")),
              //               //       ],
              //               //     ),
              //               //   ),
              //               // ),
              //             ],
              //           ),
              //           Row(
              //             children: [
              //               Padding(
              //                 padding: const EdgeInsets.all(8.0),
              //                 child: Container(
              //                   height: 150,
              //                   width: 70,
              //                   child: Column(
              //                     children: [
              //                       SizedBox(height: 9,),
              //                       Image(image: AssetImage(
              //                         "assets/favourites.png",
              //                       ),fit: BoxFit.fill,
              //                       ),
              //                       SizedBox(
              //                         height: 1,
              //                       ),
              //                       Text("Favourites",style: TextStyle(fontFamily: "assets/font/times_new_roman.ttf")),
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //               // SizedBox(
              //               //   width: 5,
              //               // ),
              //               // Padding(
              //               //   padding: const EdgeInsets.all(8.0),
              //               //   child: Container(
              //               //     height: 150,
              //               //     width: 70,
              //               //     child: Column(
              //               //       children: [
              //               //         Image(image: AssetImage("assets/deposits.png")),
              //               //         SizedBox(
              //               //           height: 8,
              //               //         ),
              //               //         Text("Deposits",style: TextStyle(fontFamily: "assets/font/times_new_roman.ttf")),
              //               //       ],
              //               //     ),
              //               //   ),
              //               // ),
              //               SizedBox(
              //                 width: 5,
              //               ),
              //               // Padding(
              //               //   padding: const EdgeInsets.all(8.0),
              //               //   child: Container(
              //               //     height: 150,
              //               //     width: 70,
              //               //     child: Column(
              //               //       children: [
              //               //         SizedBox(height: 18,),
              //               //         Image(image: AssetImage("assets/recharge.png")),
              //               //         SizedBox(height: 18,),
              //               //         Text("Recharge",style: TextStyle(fontFamily: "assets/font/times_new_roman.ttf"),),
              //               //       ],
              //               //     ),
              //               //   ),
              //               // ),
              //               SizedBox(
              //                 width: 8,
              //               ),
              //               Container(
              //                 height: 150,
              //                 width: 73,
              //                 child: Column(
              //                   children: [
              //                     Image(image: AssetImage("assets/investment.png")),
              //                     SizedBox(height: 19,),
              //                     Text("Investment",style: TextStyle(fontFamily: "assets/font/times_new_roman.ttf")),
              //                   ],
              //                 ),
              //               ),
              //             ],
              //           ),
              //           Row(
              //             children: [
              //               Padding(
              //                 padding: const EdgeInsets.all(8.0),
              //                 child: Container(
              //                   height: 120,
              //                   width: 70,
              //                   child: Column(
              //                     children: [
              //                       Image(image: AssetImage(
              //                         "assets/voice.png",
              //                       ),fit: BoxFit.fill,
              //                       ),
              //                       Text("Voice"),
              //                       SizedBox(
              //                         height: 3,
              //                       ),
              //                       Text("Assist",style: TextStyle(fontFamily: "assets/font/times_new_roman.ttf")),
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 5,
              //               ),
              //               Padding(
              //                 padding: const EdgeInsets.all(8.0),
              //                 child: Container(
              //                   height: 120,
              //                   width: 70,
              //                   child: Column(
              //                     children: [
              //                       Image(image: AssetImage("assets/request.png")),
              //                       Text("Service",style: TextStyle(fontFamily: "assets/font/times_new_roman.ttf")),
              //                       SizedBox(
              //                         height: 3,
              //                       ),
              //                       Text("Request",style: TextStyle(fontFamily: "assets/font/times_new_roman.ttf")),
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 5,
              //               ),
              //               Padding(
              //                 padding: const EdgeInsets.all(8.0),
              //                 child: Container(
              //                   height: 120,
              //                   width: 70,
              //                   child: Column(
              //                     children: [
              //                       Image(image: AssetImage("assets/complaints.png")),
              //                       Text("Complaints",style: TextStyle(fontSize: 12,fontFamily: "assets/font/times_new_roman.ttf"),),
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //
              //             ],
              //           ),
              //
              //         ],
              //       ),
              //     ),
              //   ),
              // )


            ],
          ),
        ),
              // people*************************************
              SizedBox(height: 20),
              Text("Offers for You",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: "assets/font/times_new_roman.ttf"),),
              // SizedBox(height: 10),
              //offers*********************
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                    height: 150,
                    width: 400,
                    decoration: BoxDecoration(
                      // border: Border.all()
                    ),
                    child: CarouselSlider.builder(
                      itemCount: N.length,
                      options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 16/9,
                        enlargeCenterPage: true,
                        viewportFraction: 1,
                        enableInfiniteScroll: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentN = index;

                          });
                        },
                      ),
                      itemBuilder: (BuildContext context,index, int realIndex) {
                        return
                          Container(
                            height: 200,
                            width: 400,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(N[index]),
                                  fit: BoxFit.fill
                              ),
                            ),
                          );
                      },
                    )
                ),
              ),
              //Carosual Slider******************************

              DotsIndicator(dotsCount: 6,
                position: currentN,),
              //DotsIndicator**********************************
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Container(
                  height: 300,
                  width: 400,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 10,),
                          GestureDetector(onTap: ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>eletricity()));
                          },
                            child: Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xffddf7f1)
                              ),
                              child: Column(
                                children: [
                                  Container(
                                      height: 78,
                                      width: 100,
                                      child: Image(image: AssetImage("assets/ele.png"))),
                                  Text("Electricity",style: TextStyle(
                                      fontFamily:
                                      "assets/font/times_new_roman.ttf")),
                                  Text("Pay",style: TextStyle(
                                      fontFamily:
                                      "assets/font/times_new_roman.ttf")),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          GestureDetector(onTap: ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>DTH()));
                          },
                            child: Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xffdff2fb)
                              ),
                              child: Column(
                                children: [
                                  Container(
                                      height: 80,
                                      width: 100,
                                      child: Image(image: AssetImage("assets/tv.png"))),
                                  Text("DTH/",style: TextStyle(
                                      fontFamily:
                                      "assets/font/times_new_roman.ttf")),
                                  Text("Cable TV",style: TextStyle(
                                      fontFamily:
                                      "assets/font/times_new_roman.ttf")),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          GestureDetector(onTap: ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Landline()));
                          },
                            child: Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xffedf3fd)
                              ),
                              child: Column(
                                children: [
                                  Container(
                                      height: 80,
                                      width: 100,
                                      child: Image(image: AssetImage("assets/landline.png"))),
                                  Text("Broadband/",style: TextStyle(
                                      fontFamily:
                                      "assets/font/times_new_roman.ttf")),
                                  Text("Landline",style: TextStyle(
                                      fontFamily:
                                      "assets/font/times_new_roman.ttf")),
                                ],
                              ),
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
                            GestureDetector(onTap: ()
                            {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>gas()));
                            },
                              child: Container(
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xfff8f3f9)
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                        height: 78,
                                        width: 100,
                                        child: Image(image: AssetImage("assets/gas.png"))),
                                    Text("Gas Cylinder",style: TextStyle(
                                        fontFamily:
                                        "assets/font/times_new_roman.ttf")),
                                    Text("Booking",style: TextStyle(
                                        fontFamily:
                                        "assets/font/times_new_roman.ttf")),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xfffcf6f3)
                              ),
                              child: Column(
                                children: [
                                  Container(
                                      height: 78,
                                      width: 100,
                                      child: Image(image: AssetImage("assets/play.png"))),
                                  Text("Google",style: TextStyle(
                                      fontFamily:
                                      "assets/font/times_new_roman.ttf")),
                                  Text("Play",style: TextStyle(
                                      fontFamily:
                                      "assets/font/times_new_roman.ttf")),
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                            GestureDetector(onTap: ()
                            {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>fasttag()));
                            },
                              child: Container(
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                    color: Color(0xfffaf1f1)
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                        height: 78,
                                        width: 100,
                                        child: Image(image: AssetImage("assets/fast_tag.png"))),
                                    Text("FastTag",style: TextStyle(
                                        fontFamily:
                                        "assets/font/times_new_roman.ttf")),
                                    Text("recharge",style: TextStyle(
                                        fontFamily:
                                        "assets/font/times_new_roman.ttf")),
                                  ],
                                ),
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


              // Try Adding these
              Padding(
                padding: const EdgeInsets.only(left: 33),
                child: Row(
                  children: [
                    Text("Invite friends to get ₹201",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: "assets/font/times_new_roman.ttf"),),
                  ],
                ),
              ),
              //invite*****************************************
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text("Invite friends to IZet Pay and get ₹201",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                      fontFamily: "assets/font/times_new_roman.ttf"),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 33),
                child: Text("when your friend sends their first payment.",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                      fontFamily: "assets/font/times_new_roman.ttf"),),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 33,top: 10),
              //   child: Row(
              //     children: [
              //       Text("They get ₹60!",
              //         style: TextStyle(
              //             color: Colors.black,
              //             fontWeight: FontWeight.w300,
              //             fontSize: 20,
              //             fontFamily: "assets/font/times_new_roman.ttf"),),
              //     ],
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 33),
                child: Row(
                  children: [
                    Text("Copy your code",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          fontFamily: "assets/font/times_new_roman.ttf"),),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,top: 4),
                      child: Text("9g2se1b",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: "assets/font/times_new_roman.ttf"),),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 31,top: 10,bottom: 20),
                child: Row(
                  children: [
                    SizedBox(
                      height: 40,
                      width: 120,
                      child: ElevatedButton(onPressed: (){}, child: Text("Invite",style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontFamily:
                          "assets/font/times_new_roman.ttf"),),
                        style:ElevatedButton.styleFrom(backgroundColor: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),

            ]
            )),
      )
    );
  }
}
