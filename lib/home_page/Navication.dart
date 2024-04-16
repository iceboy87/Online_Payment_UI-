import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/home_page/Accounts.dart';
import 'package:untitled/home_page/more_page.dart';

import 'home page.dart';
import 'mPassbook.dart';
class Navi extends StatefulWidget {
  const Navi({super.key});

  @override
  State<Navi> createState() => _NaviState();
}

class _NaviState extends State<Navi> {
  int _index=0;


  List Page=[
    home(),
    accounts(),
    mpass(),
    all(),
  ];


  void tap(index) {
    setState(() {
      _index = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Page[_index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff98c1d4),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon:
          Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon:
          Icon(Icons.account_balance_outlined), label: 'Accounts'),
          BottomNavigationBarItem(icon:
          Icon(CupertinoIcons.creditcard), label: 'mPassbook'),
          BottomNavigationBarItem(icon:
          Icon(Icons.more_horiz_rounded), label: 'More'),

        ],
        currentIndex: _index,
        onTap: tap,
      ),
    );
  }
}
