import 'package:flutter/material.dart';
import 'package:untitled/home_page/Navication.dart';
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();
    return Scaffold(
      key: formkey,
      appBar: AppBar(
        backgroundColor: Color(0xff0063b1),
        title: Center(
            child: Text("IZet e-Payment PVT LTD",
              style: TextStyle(color: Colors.white,fontFamily: "assets/font/times_new_roman.ttf"),)),
      ),
      body: Form(key: formkey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 1200,
                width: 450,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.02, 0.5],
                        colors: [Color(0xff0063b1), Color(0xff9bc3d5)])),
                child: Column(
                  children: [
                    SizedBox(
                      height: 200,
                        width: 200,
                        child: Image(
                          image: AssetImage("assets/images.png"),
                          fit: BoxFit.fill,)),
                    Container(
                      height: 300,
                    width: 380,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(50),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [0.02, 0.5],
                            colors: [Color(0xff9bc3d5), Color(0xff9bc3d5)])
                    ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 50,right: 80,left: 80),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Phone Number",
                                labelText: "Phone Number",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
          
                                ),
                              ),
                              keyboardType: TextInputType.emailAddress,
                                validator: (value){
                                  if (value==null||value.isEmpty){
                                    return "please enter valid number";
                                  }
                                  if (value.length > 10 || value.length < 10){
                                    return "Please enter 10 Digite Number";
                                  }
          
                                }
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10,right: 80,left: 80),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  labelText: "Password",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  )
                              ),
                              validator: (value){
                                if(value ==null ||value.isEmpty)
                                {
                                  return" minimum 8 chatracters" ;
                                }
                              },
          
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: ElevatedButton(
          
                                onPressed: ()
                            {
                              setState(() {
                                if (formkey.currentState!.validate())
                                {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text("Success")));
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Navi()));
          
                                }
          
                              });
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>Navi()));
                            }
          
                                , child: Text("Login",style: TextStyle(color: Colors.white),),style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.black),),
                          ),
                          )
                        ],
                      ),
                          ),
                    SizedBox(
                      height: 50,
                    ),
                    IconButton(
                        iconSize: 80,
                        onPressed: ()
                    {
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>Navi()));
                    }
                        , icon: Icon(Icons.fingerprint))
                  ],
                ),
          
              ),
            ],
          ),
        ),
      ),
    );
  }
}
