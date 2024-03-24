// ignore_for_file: unused_label, dead_code

import 'package:flutter/material.dart';
import 'pg1.dart';

class Homep extends StatefulWidget {
  const Homep({Key? key}) : super(key: key); 

  @override
  State<Homep> createState() => _HomepState();
}

class _HomepState extends State<Homep> {
  int select = 0;
  List<Widget> pages = [
    PGOne(), 
    favori(),
    Profi(),
    
  ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.yellow,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: select,
        backgroundColor: Colors.yellow,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black45,
        selectedLabelStyle: TextStyle(color: Colors.black),
        onTap: (index) => 
        setState(() {
          select = index;
        }),
      
        items:  [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_sharp), label: "Profile"),
        ],
      ),
      body:pages.elementAt(select),
    );
  }
}
class Profi extends StatelessWidget {
  const Profi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
    );
  }
}


class favori extends StatelessWidget {
  const favori({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
    );
  }
}