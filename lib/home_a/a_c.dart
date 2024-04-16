import 'package:flutter/material.dart';

import '../home_page/Navication.dart';

class h_a extends StatefulWidget {
  const h_a({super.key});

  @override
  State<h_a> createState() => _h_aState();
}

class _h_aState extends State<h_a> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Navi()));
        }, icon: Icon(Icons.arrow_back)),
        title: Center(
            child: Text(
          "My Account",
          style: TextStyle(fontFamily: "assets/font/times_new_roman.ttf"),
        )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 36),
                  child: Text("My Card",
                      style: TextStyle(
                          fontFamily: "assets/font/times_new_roman.ttf",
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 150,
              width: 380,
              decoration: BoxDecoration(
                  color: Color(0xff3a58ee),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: CircleAvatar(
                          radius: (50),
                          backgroundColor: Colors.white,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset("assets/visa.png"),
                          )),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40, left: 33),
                          child: Text("Visa Business Credit Card",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 18),
                          child: Text("1345******52324",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 36),
              child: Row(
                children: [
                  Text("Dates",
                      style: TextStyle(
                          fontFamily: "assets/font/times_new_roman.ttf",
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                ],
              ),

            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 42),
              child: Row(
                children: [
                  Text("₹ 1,789,505.55",
                      style: TextStyle(
                          color: Color(0xff3a58ee),
                          fontFamily: "assets/font/times_new_roman.ttf",
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 42),
              child: Row(
                children: [
                  Text("Avaliable Balance",
                      style: TextStyle(
                          color: Colors.black26,
                          fontFamily: "assets/font/times_new_roman.ttf",
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 42),
              child: Row(
                children: [
                  Text("04/25",
                      style: TextStyle(
                          color: Color(0xff3a58ee),
                          fontFamily: "assets/font/times_new_roman.ttf",
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 42),
              child: Row(
                children: [
                  Text("Valid",
                      style: TextStyle(
                          color: Colors.black26,
                          fontFamily: "assets/font/times_new_roman.ttf",
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 150,
              width: 380,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xff0063b1), Color(0xff9bc3d5)]),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              // gradient: LinearGradient(
                              //     begin: Alignment.bottomLeft,
                              //     end: Alignment.topRight,
                              //     colors: [Color(0xff0063b1), Color(0xff9bc3d5)]),
                              image: DecorationImage(
                                  image: AssetImage("assets/credit.png"))),
                        )),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40, left: 33),
                          child: Text("Credit Rating",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 30),
                          child: Text("Credit card offers",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 36),
              child: Row(
                children: [
                  Text("Cost History",
                      style: TextStyle(
                          fontFamily: "assets/font/times_new_roman.ttf",
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                ],
              ),
            ),
            SizedBox(height: 20),
            // cost list
            Container(
              height: 80,
              width: 380,
              decoration: BoxDecoration(

                  color: Color(0xff283578),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,bottom: 5
                      ),
                      child: CircleAvatar(
                          radius: (25),
                          backgroundColor: Colors.white,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset("assets/v.png"),
                          )),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 30),
                          child: Text("Vishnu T.K",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, left: 10),
                          child: Text("₹ 56 Paid",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              height: 80,
              width: 380,
              decoration: BoxDecoration(
                  color: Color(0xff3a12345),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,bottom: 5
                      ),
                      child: CircleAvatar(
                          radius: (25),
                          backgroundColor: Colors.white,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset("assets/m.png"),
                          )),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 15),
                          child: Text("Manisha ",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, left: 35),
                          child: Text("₹ 58,600 Paid",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              height: 80,
              width: 380,
              decoration: BoxDecoration(
                  color: Color(0xff3a58ee),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20,bottom: 5
                      ),
                      child: CircleAvatar(
                          radius: (25),
                          backgroundColor: Colors.white,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset("assets/b.png"),
                          )),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 30),
                          child: Text("Bhuvanesh",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, left: 20),
                          child: Text("₹ 1000 Paid",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              height: 80,
              width: 380,
              decoration: BoxDecoration(
                  color: Color(0xff789143),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20,bottom: 5
                      ),
                      child: CircleAvatar(
                          radius: (25),
                          backgroundColor: Colors.white,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset("assets/i.png"),
                          )),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, ),
                          child: Text("Iswarya",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, left: 30),
                          child: Text("₹ 45000 Credit",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              height: 80,
              width: 380,
              decoration: BoxDecoration(
                  color: Color(0xff3a12345),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20,bottom: 5
                      ),
                      child: CircleAvatar(
                          radius: (25),
                          backgroundColor: Colors.white,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset("assets/v.png"),
                          )),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 30),
                          child: Text("Vigneshwaran S",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, right: 20),
                          child: Text("₹ 14,300 Paid",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              height: 80,
              width: 380,
              decoration: BoxDecoration(
                  color: Color(0xff3a58ee),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20,bottom: 5
                      ),
                      child: CircleAvatar(
                          radius: (25),
                          backgroundColor: Colors.white,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset("assets/b.png"),
                          )),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 30),
                          child: Text("Bala Vignesh",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, ),
                          child: Text("₹ 1000 Paid",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 5,),
            //cost
            Container(
              height: 80,
              width: 380,
              decoration: BoxDecoration(
                  color: Color(0xff283578),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20,bottom: 5
                      ),
                      child: CircleAvatar(
                          radius: (25),
                          backgroundColor: Colors.white,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset("assets/v.png"),
                          )),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, ),
                          child: Text("  Vijay",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, left: 35),
                          child: Text("₹ 56 Paid",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              height: 80,
              width: 380,
              decoration: BoxDecoration(
                  color: Color(0xff3a12345),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20,bottom: 5
                      ),
                      child: CircleAvatar(
                          radius: (25),
                          backgroundColor: Colors.white,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset("assets/m.png"),
                          )),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 10),
                          child: Text("Madhan",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, left: 30),
                          child: Text("₹ 58,600 Paid",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              height: 80,
              width: 380,
              decoration: BoxDecoration(
                  color: Color(0xff3a58ee),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20,bottom: 5
                      ),
                      child: CircleAvatar(
                          radius: (25),
                          backgroundColor: Colors.white,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset("assets/b.png"),
                          )),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 30),
                          child: Text("Bhuvana",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, left: 30),
                          child: Text("₹ 1000 Paid",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              height: 80,
              width: 380,
              decoration: BoxDecoration(
                  color: Color(0xff789143),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20,bottom: 5
                      ),
                      child: CircleAvatar(
                          radius: (25),
                          backgroundColor: Colors.white,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset("assets/i.png"),
                          )),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, ),
                          child: Text("Iswarya",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, left: 33),
                          child: Text("₹ 45000 Credit",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              height: 80,
              width: 380,
              decoration: BoxDecoration(
                  color: Color(0xff852369),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20,bottom: 5
                      ),
                      child: CircleAvatar(
                          radius: (25),
                          backgroundColor: Colors.white,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset("assets/v.png"),
                          )),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 33),
                          child: Text("Vigneshwaran S",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, right: 10),
                          child: Text("₹ 14,300 Paid",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              height: 80,
              width: 380,
              decoration: BoxDecoration(
                  color: Color(0xff3a58ee),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20,bottom: 5
                      ),
                      child: CircleAvatar(
                          radius: (25),
                          backgroundColor: Colors.white,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset("assets/b.png"),
                          )),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 33),
                          child: Text("Bala Vignesh",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, right: 5),
                          child: Text("₹ 1000 Paid",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              height: 80,
              width: 380,
              decoration: BoxDecoration(
                  color: Color(0xff283578),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20,bottom: 5
                      ),
                      child: CircleAvatar(
                          radius: (25),
                          backgroundColor: Colors.white,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset("assets/v.png"),
                          )),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 33),
                          child: Text("Vishnu T.K",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, left: 10),
                          child: Text("₹ 56 Paid",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              height: 80,
              width: 380,
              decoration: BoxDecoration(
                  color: Color(0xff3a12345),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20,bottom: 5
                      ),
                      child: CircleAvatar(
                          radius: (25),
                          backgroundColor: Colors.white,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset("assets/m.png"),
                          )),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 20),
                          child: Text("Manisha ",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 30),
                          child: Text("₹ 58,600 Paid",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              height: 80,
              width: 380,
              decoration: BoxDecoration(
                  color: Color(0xff3a58ee),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20,bottom: 5
                      ),
                      child: CircleAvatar(
                          radius: (25),
                          backgroundColor: Colors.white,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset("assets/b.png"),
                          )),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 30),
                          child: Text("Bhuvanesh",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, left: 13),
                          child: Text("₹ 1000 Paid",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              height: 80,
              width: 380,
              decoration: BoxDecoration(
                  color: Color(0xff789143),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20,bottom: 5
                      ),
                      child: CircleAvatar(
                          radius: (25),
                          backgroundColor: Colors.white,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset("assets/i.png"),
                          )),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,right: 5 ),
                          child: Text(" Iswarya",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, left: 33),
                          child: Text("₹ 45000 Credit",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              height: 80,
              width: 380,
              decoration: BoxDecoration(
                  color: Color(0xff3a12345),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20,bottom: 5
                      ),
                      child: CircleAvatar(
                          radius: (25),
                          backgroundColor: Colors.white,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset("assets/v.png"),
                          )),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 33),
                          child: Text("Vigneshwaran S",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, right: 15),
                          child: Text("₹ 14,300 Paid",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              height: 80,
              width: 380,
              decoration: BoxDecoration(
                  color: Color(0xff3a58ee),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20,bottom: 5
                      ),
                      child: CircleAvatar(
                          radius: (25),
                          backgroundColor: Colors.white,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset("assets/b.png"),
                          )),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 33),
                          child: Text("Bala Vignesh",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, left: 2),
                          child: Text("₹ 1000 Paid",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf")),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 5,),
        
        
        
          ],
        ),
      ),
    );
  }
}
