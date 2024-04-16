import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home_page/Navication.dart';

class recharge extends StatefulWidget {
  const recharge({super.key});

  @override
  State<recharge> createState() => _rechargeState();
}

class _rechargeState extends State<recharge> {

  bool isSwitched = false;
  bool switched = false;
  int value =40;

  String dropdownvalue = 'Airtel';
  var items = [
    'Airtel',
    'Jio',
    'VI',
    'BSNL',
  ];

  String dropdown = 'Himachel Pradesh';
  var city = [
    'Himachel Pradesh',
    'Jammu & Kashmir',
    'Karnataka',
    'Kerala',
    'Kolkata',
    'Madhya Prasdesh & chhattisgarh',
    'Maharashtra & Goa',
    'Mumbai',
    'North East',
    'Odisha',
    'Punjab',
    'Rajasthan',
    'Tamil Nadu',
    'Uttar Pradesh East',
  ];
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff0063b1),
        leading: IconButton(onPressed: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Navi()));
        }, icon: Icon(Icons.arrow_back)),
        title:  Text(
          "Mobile Recharge",
          style: TextStyle(
              color: Colors.white,
              fontFamily: "assets/font/times_new_roman.ttf"),
        ),
      ),
      body: Form(key: formkey,

        child: Container(
          height: 1000,
          width: 450,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.02, 0.5],
                  colors: [Color(0xff0063b1), Color(0xff9bc3d5)])
          ),
          child: Center(
            child: Container(
              height: 500,
              width: 390,
              decoration: BoxDecoration(),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white
                        ),
                        child: DropdownButton(

                          // Initial Value
                          value: dropdownvalue,

                          // Down Arrow Icon
                          icon: const Icon(Icons.keyboard_arrow_down),

                          // Array list of items
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(items),
                              ),
                            );
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                          style: TextStyle(
                              color: Colors.black
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Container(
                          height: 50,
                          width: 248,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white
                          ),
                          child: DropdownButton(

                            // Initial Value
                            value: dropdown,

                            // Down Arrow Icon
                            icon: const Icon(Icons.keyboard_arrow_down),

                            // Array list of items
                            items: city.map((String city) {
                              return DropdownMenuItem(
                                value: city,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(city),
                                ),
                              );
                            }).toList(),
                            // After selecting the desired option,it will
                            // change button value to selected value
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdown = newValue!;
                              });
                            },
                            underline: SizedBox(height: 30,width: 50,),
                            style: TextStyle(
                                color: Colors.black
                            ),
                          ),
                        ),
                      )],
                  ),
                  SizedBox(height: 20,),

                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderSide: new BorderSide(
                            color: Colors.white,
                          ),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: "Enter Mobile Number",hintStyle: TextStyle(color: Colors.white)
                    ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value){
                        if (value==null||value.isEmpty){
                          return "Please enter valid 10 Digite number";
                        }
                        if (value.length > 10 || value.length < 10){
                          return "Please enter 10 Digite Number";
                        }

                      }

                  ),

                  SizedBox(height: 20,),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderSide: new BorderSide(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        hintText: "Enter Amount",hintStyle: TextStyle(color: Colors.white)
                    ),
                      validator: (value){
                        if (value==null||value.isEmpty){
                          return "please enter valid number";
                        }

                      }
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: SizedBox(
                      height: 35,
                      width: 120,
                      child: ElevatedButton(onPressed: ()
                      {
                        setState(() {
                          if (formkey.currentState!.validate())
                          {
                            AlertDialog alert = AlertDialog(
                              content: Text("Success Fully Recharge With Your Amount"),
                              actions: [
                                GestureDetector(
                                    onTap: (){
                                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>fund()));
                                    },
                                    child: Text("")),
                              ],
                            );
                            //Navigator.push(context, MaterialPageRoute(builder: (context)=>Navi()));
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return alert;
                              },
                            );

                          }

                        });
                      },
                        child: Text("Recharge",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily:
                          "assets/font/times_new_roman.ttf"),),
                        style:ElevatedButton.styleFrom(backgroundColor: Colors.green),
                      ),
                    ),
                  )



                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
