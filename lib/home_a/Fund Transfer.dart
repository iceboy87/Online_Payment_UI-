import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home_page/Navication.dart';

class fund extends StatefulWidget {
  const fund({super.key});

  @override
  State<fund> createState() => _fundState();
}

class _fundState extends State<fund> {
  TextEditingController name=TextEditingController();
  TextEditingController bank=TextEditingController();

  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0063b1),
        leading: IconButton(onPressed: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Navi()));
        }, icon: Icon(Icons.arrow_back)),
        title:  Text("Fund Transfer",
          style: TextStyle(
            color: Colors.white,
              fontFamily: "assets/font/times_new_roman.ttf"),),
      ),
      body: Form(key: formkey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: Container(
                  height: 500,
                  width: 400,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: bank,
                        decoration: InputDecoration(

                          // border: OutlineInputBorder(
                          //   borderRadius: BorderRadius.circular(10)
                          // ),
                          hintText: "Bank & Branch / IFSC",
                        ),
                        validator: (value){
                          if(value ==null ||value.isEmpty)
                          {
                            return" minimum 2 chatracters" ;
                          }
                        },
                      ),
                      SizedBox(height: 20,),
                      TextFormField(
                        decoration: InputDecoration(
                          // border: OutlineInputBorder(
                          //   borderRadius: BorderRadius.circular(10)
                          // ),
                          hintText: "Account Number",
                        ),
                          validator: (value){
                            if (value==null||value.isEmpty){
                              return "please enter valid number";
                            }
                            if (value.length > 15 || value.length < 15){
                              return "Please enter 15 Digite Number";
                            }

                          }
                      ),
                      SizedBox(height: 20,),
                      TextFormField(
                        decoration: InputDecoration(
                          // border: OutlineInputBorder(
                          //   borderRadius: BorderRadius.circular(10)
                          // ),
                          hintText: "Confirm Account Number",

                        ),
                          validator: (value){
                            if (value==null||value.isEmpty){
                              return "please enter valid number";
                            }
                            if (value.length > 15 || value.length < 15){
                              return "Please enter 15 Digite Number";
                            }

                          }
                      ),
                      SizedBox(height: 20,),
                      TextFormField(
                        controller: name,
                        decoration: InputDecoration(
                          // border: OutlineInputBorder(
                          //   borderRadius: BorderRadius.circular(10)
                          // ),
                          hintText: "Account Holder Name",
                        ),
                        validator: (value){
                          if(value ==null ||value.isEmpty)
                          {
                            return" minimum 2 chatracters" ;
                          }
                        },
                      ),
                      SizedBox(height: 30,),
                      ElevatedButton(onPressed: ()
                      {
                        setState(() {
                          if (formkey.currentState!.validate())
                          {

                           // Navigator.push(context, MaterialPageRoute(builder: (context)=>Navi()));
                            AlertDialog alert = AlertDialog(
                              content: Text("Success Fully Add The Funder"),
                              actions: [
                                GestureDetector(
                                    onTap: (){
                                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>fund()));
                                    },
                                    child: Text("Ok")),
                              ],
                            );

                            // show the dialog
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return alert;
                              },
                            );

                          }

                        });

                      }, child: Text("Verify & Send Transation"))

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
