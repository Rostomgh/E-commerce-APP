// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tes1/app/Home.dart';
import 'package:tes1/login-up/Bby.dart';
import 'package:tes1/login-up/Bs.dart';
import 'package:tes1/login-up/register.dart';
import 'package:tes1/login-up/welcome.dart';
import 'package:tes1/pages/oboarding.dart';
import 'package:tes1/timer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    
      initialRoute: '/timer',
      routes: {
        '/timer':(context) => const First(),
          '/': (context) => const Second(),
        '/welcome':(context) => const Welcome(),
          'register':(context)=>const Register(),
          'bs':(context) =>const Bs(),
          'home':(context)=>const Homep(),
          'buyer':(context)=>const ForBuyer(),
        


      },
    );
  }
}

