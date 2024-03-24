// ignore_for_file: prefer_const_constructors

import 'dart:async';


import 'package:flutter/material.dart';
import 'package:tes1/pages/oboarding.dart';






class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _firstState();
}

class _firstState extends State<First> {
  @override
  void initState() {
  
    super.initState();
    Timer(
      Duration(seconds: 5),
      ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => Second()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow,
        child: Stack(
          children: [
            Positioned(
              child: Text(
                'CURVE',
                style: TextStyle(fontSize: 30),
              ),
              left: 146,
              right: 147,
              top: 473,
              bottom: 309,
            ),
            Positioned(
              left: 146,
              right: 147,
              top: 364,
              bottom: 366,
              child: ClipRRect(
                child: Image.asset("assets/img/logo.jpg",width: 82,),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
  
