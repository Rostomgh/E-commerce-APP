// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class Bs extends StatelessWidget {
  const Bs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,

     body: Stack(
      children: [
        Container(
            padding: EdgeInsets.fromLTRB(44, 150, 49, 0),
            height: 425,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.black,
            ),
            margin: EdgeInsets.fromLTRB(1, 387.97, 1, 0),
            child: Column(
              children: [
                Text(
                  "ARE YOU :",
                  
                  style: TextStyle(color: Colors.yellow, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "register");
                  },
                  child: Text(
                    'SELLER',
                    style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18, color: Colors.white),
                  ),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 110, vertical: 15)),
                    backgroundColor: MaterialStateProperty.all(Colors.yellow),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24))),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context,   'buyer');
                  },
                  child: Text(
                    'BUYER',
                    style: TextStyle(fontWeight:FontWeight.bold ,fontSize: 18, color: Colors.white),
                  ),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 110, vertical: 15)),
                    backgroundColor: MaterialStateProperty.all(Colors.yellow),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24))),
                  ),
                ),
              ],
            ),
          ),
          Container(
              child: ClipRRect(
                child: Image.asset(
                  "assets/img/pc2.jpg",
                  height: 400,
                  width: 150,
                ),
                borderRadius: BorderRadius.circular(46),
              ),
              margin: EdgeInsets.fromLTRB(31, 213.97, 37, 294),
              padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
              height:330,
              width: 310,
              decoration: BoxDecoration(
                  color: Colors.black,
                  
                  borderRadius: BorderRadius.circular(35))),
        ],
      
     ),




    );
  }
}
