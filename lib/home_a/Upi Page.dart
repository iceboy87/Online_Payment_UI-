import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../home_page/Navication.dart';
import '../image.dart';
class Upi extends StatefulWidget {
  const Upi({super.key});

  @override
  State<Upi> createState() => _UpiState();
}

class _UpiState extends State<Upi> {
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
      backgroundColor: Color(0xff0063b1),

      appBar: AppBar(
        backgroundColor: Color(0xff0063b1),
        leading: IconButton(onPressed: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Navi()));
        }, icon: Icon(Icons.arrow_back)),
      ),
      body: Column(
        children: [
          Container(
            height: 530,
            width: 460,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,

                    colors: [Color(0xff0063b1), Color(0xff0099f4)])),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 30),
                      child: Stack(children: [
                        _image !=null?
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: MemoryImage(_image!),
                        ):
                        const
                        CircleAvatar(
                          radius: 60,
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
                      ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Text("Vigneshwaran s",
                            style: TextStyle(
                              fontSize: 25,
                                color: Colors.white,
                                fontFamily: "assets/font/times_new_roman.ttf"),),
                          Text("+91 6383473280",
                              style: TextStyle(
                                fontSize: 15,
                                  color: Colors.white,
                                  fontFamily: "assets/font/times_new_roman.ttf"))
                        ],
                      ),
                    ),


                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Center(
                    child: Text("UPI ID:  Q384812847@IZet",
                        style: TextStyle(
                            color: Colors.white,

                            fontFamily: "assets/font/times_new_roman.ttf")
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 22),
                  child: Center(
                    child: Container(
                      height: 250,
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/QR.png"),fit: BoxFit.fill,
                          
                        )
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 80,top: 30),
                      child: ElevatedButton(onPressed: (){}, child: Text("Download")),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80,top: 30),
                      child: ElevatedButton(onPressed: (){}, child: Text("   Share   ")),
                    ),
                  ],
                ),

              ],
            ),
            ),
          SizedBox(height: 20,),
          
          Text("My Linked Bank Account", style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: "assets/font/times_new_roman.ttf")),
          SizedBox(height: 20,),
          
          Row(
            children: [
              SizedBox(width: 15,),
              Container(
                height: 90,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),

                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        height: 50,
                        width: 50,
                        child: Image(image: AssetImage(
                          "assets/icon.png",
                        ),fit: BoxFit.fill,),
                      ),
                    ),
                    Column(
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(top: 18,left: 10),
                          child: Text("IZet Bank",
                            style: TextStyle(
                              color: Colors.white,
                                fontSize: 20,
                                fontFamily: "assets/font/times_new_roman.ttf"),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text("1345******5232",
                            style: TextStyle(
                              color: Colors.white,
                                fontSize: 15,
                                fontFamily: "assets/font/times_new_roman.ttf"),),
                        )

                      ],
                    )
                  ],
                ),
              ),
              SizedBox(width: 20,),
              Container(
                height: 90,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),

                ),
                child: Row(
                  children: [
                    IconButton(

                        onPressed: (){}, icon: Icon(Icons.add,color: Colors.white,)),
                    Text("Add Bank", style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "assets/font/times_new_roman.ttf"),)
                  ],
                ),
              ),
            ],
          ),
          


        ],
      ),
    );
  }
}
