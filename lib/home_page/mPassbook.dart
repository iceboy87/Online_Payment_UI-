import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/home_page/home%20page.dart';

import 'Navication.dart';
import 'bank_report.dart';
class mpass extends StatefulWidget {
  const mpass({super.key});

  @override
  State<mpass> createState() => _mpassState();
}

class _mpassState extends State<mpass> {

  List abc = [
    '○ Last One Month',
    '○ Last Three Months',
    '○ Last Six Months',
  ];
  int select=0;
  void press(int index){
    setState(() {
      select=index;
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
        title:  Text("mPassbook",style: TextStyle(
            color: Colors.white,
            fontFamily:
            "assets/font/times_new_roman.ttf")),
        actions: [
          IconButton(onPressed: ()
          {
           Navigator.push(context, MaterialPageRoute(builder: (context)=>Navi()));
          }, icon: Icon(Icons.home,color: Colors.white,))
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("From",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily:
                        "assets/font/times_new_roman.ttf")),

              ),
              SizedBox(height: 50,)
            ],
          ),
          Container(
            height: 100,
            width: 380,
            decoration: BoxDecoration(color: Colors.white,
            border: Border.all()
            ),
            child: Row(
              children: [
                Container(
                  height: 150,
                    width: 100,
                    child: Image(
                        image: AssetImage("assets/images.png"))),
                // SizedBox(
                //   width: 100,
                //   height: 60,
                //
                // ),
                Column(
                  children: [
                    Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text("₹ 1,789,505.55",style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily:
                              "assets/font/times_new_roman.ttf")),
                        ),

                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text("321101000000",style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              fontFamily:
                              "assets/font/times_new_roman.ttf")),
                        ),

                        // Container(
                        //     height: 50,
                        //   width: 50,
                        //   child: Text(".",style: TextStyle(color: Colors.green,fontSize: 50),)),

                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text("SAVINGS",style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              fontFamily:
                              "assets/font/times_new_roman.ttf")),
                        ),
                        Text("."),
                        Text("Default",style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            fontFamily:
                            "assets/font/times_new_roman.ttf")),
                        // IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.arrowtriangle_down_circle))

                      ],
                    ),
                  ],
                ),

              ],
            ),
          ),
          SizedBox(height: 20,),
          Center(
              child: Text("DATE RANGE",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily:
                      "assets/font/times_new_roman.ttf")
              )
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              height:180,
              child: ListView.builder(
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
                                color: select==index?Colors.blueAccent:Colors.black,
                                fontSize: 14),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: SizedBox(
                  height: 35,
                  width: 120,
                  child: ElevatedButton(
                      onPressed: ()
                      {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>bank_report()));
                      },
                    child: Text("View",
                        style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily:
                      "assets/font/times_new_roman.ttf")),
                    style:ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: SizedBox(
                  height: 35,
                  width: 120,
                  child: ElevatedButton(onPressed: (){}, child: Text("Download",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily:
                      "assets/font/times_new_roman.ttf"),),
                    style:ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  ),
                ),
              )
            ],
          )

        ],
      ),
    );
  }
}
