import 'package:flutter/material.dart';
class in_page extends StatefulWidget {
  const in_page({super.key});

  @override
  State<in_page> createState() => _in_pageState();
}

class _in_pageState extends State<in_page> {
  TextEditingController number=TextEditingController();
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0063b1),
      ),
      body: Form(key: formkey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 50,top: 20),
              child: Text("Enter a phone number",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                      fontFamily:
                      "assets/font/times_new_roman.ttf")),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,right: 90),
              child: Text("Pay any UPI app using phone number",
                  style: TextStyle(
                      fontSize: 15,

                      fontFamily:
                      "assets/font/times_new_roman.ttf")),
            ),
            SizedBox(height: 20,),

            SizedBox(height: 80,width: 350,
              child: TextFormField(
                controller: number,
                  style: TextStyle(fontSize: 30),
                  decoration: InputDecoration(
                      prefixText: "+91  ",
                      prefixStyle: TextStyle(color: Colors.black,fontSize: 30),
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderSide: new BorderSide(
                            // color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: "Enter phone number",hintStyle: TextStyle(color: Colors.black,fontSize: 25)
                  ),
                  validator: (value){
                    if(value ==null ||value.isEmpty)
                    {
                      return"Pleace Enter your Amount" ;
                    }
                  }
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                height: 40,
                width: 120,
                child: ElevatedButton(onPressed: (){}, child: Text("Pay",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily:
                    "assets/font/times_new_roman.ttf"),),
                  style:ElevatedButton.styleFrom(backgroundColor: Colors.green),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 270,bottom: 10),
              child: Text("Recents",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      fontFamily:
                      "assets/font/times_new_roman.ttf")),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                height: 80,
                width: 410,
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
                            padding: const EdgeInsets.only(top: 8, left: 25),
                            child: Text("₹ 799 Recharge",
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
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10),
              child: Container(
                height: 80,
                width: 410,
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
                              child: Image.asset("assets/m.png"),
                            )),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 2),
                            child: Text("Madhan",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontFamily: "assets/font/times_new_roman.ttf")),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8, left: 38),
                            child: Text("₹ 299 Recharge",
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
            ),


          ],
        ),
      ),

    );
  }
}
