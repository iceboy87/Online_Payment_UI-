import 'package:flutter/material.dart';

import '../home_page/Navication.dart';

class fasttag extends StatefulWidget {
  const fasttag({super.key});

  @override
  State<fasttag> createState() => _fasttagState();
}

class _fasttagState extends State<fasttag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0063b1),
        leading: IconButton(onPressed: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Navi()));
        }, icon: Icon(Icons.arrow_back)),
        title:  Text('FastTag',
            style: TextStyle(
                color: Colors.white,
                fontFamily:
                "assets/font/times_new_roman.ttf")),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 1400,
              width: 450,
              decoration: BoxDecoration(
                  color: Colors.white
                //image: DecorationImage(
                //image: AssetImage("assets/electricity.png"),fit: BoxFit.fill
              ),
              child: Column(
                children: [
                  Container(
                      height: 800,
                      width: 450,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/tag.png"),fit: BoxFit.fill
                        ),)
                  ),
                  Container(
                      height: 550,
                      width: 450,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/tag_1.png"),fit: BoxFit.cover
                        ),)
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
