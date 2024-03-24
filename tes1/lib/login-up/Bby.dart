import 'package:flutter/material.dart';
import 'package:tes1/compo/custombutton.dart';
import 'package:tes1/compo/customtext.dart';

class ForBuyer extends StatefulWidget {
  const ForBuyer({super.key});

  @override
  State<ForBuyer> createState() => _ForBuyerState();
}

class _ForBuyerState extends State<ForBuyer> {
    TextEditingController fisrtname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.all(5),
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  const Text(
                    'Welcome to curve',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 27,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    height: 40,
                  ),
                  const Text(
                    'Signup To Your Account',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                  SizedBox(height: 25,),
                  CustomText(hintText: 'First Name', mycontoller: fisrtname),
                  SizedBox(height: 16,),
                  CustomText(hintText: 'Last Name', mycontoller: lastname),
                  SizedBox(height: 16,),
                  CustomText(hintText: 'Email/Mobile Number', mycontoller: email),
                  SizedBox(height: 16,),
                  CustomText(hintText: 'Password', mycontoller: password),
                
                  SizedBox(height: 45,)
                  
                    ],
              ),
                  CustomButton(text: 'Create',onPressed: (){},),
                  SizedBox(height: 30),
                  InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/welcome');
                },
                child: const Center(
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                        text: 'Have an account?',
                        style: TextStyle(fontSize: 18)),
                    TextSpan(
                        text: "Sign in",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                  ])),
                ),),

              
            ],
          ),
        ),
      ),
    );
  }
}
