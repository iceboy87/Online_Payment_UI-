import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled/image.dart';

import '../home_page/Navication.dart';
class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  Uint8List? _image;

  void selectImage()async{
    Uint8List img = await pickImage(ImageSource.gallery);
    setState(() {
      _image = img;
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
        },
            icon: Icon(CupertinoIcons.back)),
        title: Text("Profile",style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily:
            "assets/font/times_new_roman.ttf")),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Navi()));
          }, icon: Icon(Icons.home))
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
        child: Column(
          children: [
            SizedBox(height: 30,),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(children: [
                    _image !=null?
                        CircleAvatar(
                          radius: 64,
                          backgroundImage: MemoryImage(_image!),
                        ):
                        const
                    CircleAvatar(
                      radius: 64,
                      backgroundImage: AssetImage("assets/ima.png",),
                    ),
                    Positioned(child:
                    IconButton(
                      onPressed:selectImage
                      ,icon: Icon(Icons.add_a_photo_outlined),
                    ),
                      bottom: -10,
                      left: 80,

                    )
                  ],)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Text("𝐕𝐢𝐠𝐧𝐞𝐬𝐡𝐖𝐚𝐫𝐚𝐧",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,fontFamily: "Time New Romen"),),
            SizedBox(height: 30,),
            Divider(height: 10,
            thickness: 5,),
            SizedBox(height: 10,),
            Center(
              child: Text("PERSONAL INFO",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily:
                  "assets/font/times_new_roman.ttf")),
            ),
            SizedBox(height: 10,),
            Center(
              child: Container(
                height: 250,
                width: 380,
                child: Column(
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Icon(Icons.email_outlined),
                          SizedBox(width: 20,),
                          Text("vicky14552@gmail.com",style: TextStyle(
                              color: Colors.black,
                              fontFamily:
                              "assets/font/times_new_roman.ttf"))
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Icon(CupertinoIcons.phone_arrow_up_right),
                          SizedBox(width: 20,),
                          Text("+916383473280",style: TextStyle(
                              color: Colors.black,
                              fontFamily:
                              "assets/font/times_new_roman.ttf"))
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Icon(Icons.credit_card),
                          SizedBox(width: 20,),
                          Text("CFQPV9069B",style: TextStyle(
                              color: Colors.black,
                              fontFamily:
                              "assets/font/times_new_roman.ttf"))
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Icon(CupertinoIcons.location_solid),
                          SizedBox(width: 20,),
                          Column(
                            children: [
                              Text("Race Courase,",style: TextStyle(
                                  color: Colors.black,
                                  fontFamily:
                                  "assets/font/times_new_roman.ttf")),
                              Padding(
                                padding: const EdgeInsets.only(right: 18),
                                child: Text("Coimbatore",style: TextStyle(
                                    color: Colors.black,
                                    fontFamily:
                                    "assets/font/times_new_roman.ttf")),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),

              ),
            )
          ],
        ),
      ),
    );
  }
}
