import 'package:flutter/material.dart';
class bank_report extends StatefulWidget {
  const bank_report({super.key});

  @override
  State<bank_report> createState() => _bank_reportState();
}

class _bank_reportState extends State<bank_report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0063b1),
      ),
      body: Container(
        height: 1000,
        width: 450,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bank report.png"),fit: BoxFit.fill
          )
        ),
      ),
    );
  }
}
