import 'package:flutter/material.dart';
import 'package:tes1/compo/custombutton.dart';
import 'package:tes1/compo/customtext.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
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
                    height: 150,
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
                    'login to your account',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomText(
                      hintText: 'Email/Mobile Number', mycontoller: email),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomText(hintText: 'Password', mycontoller: password)
                ],
              ),
              const SizedBox(
                height: 38,
              ),
              CustomButton(
                text: "Login",
                onPressed: () {
                  Navigator.pushReplacementNamed(context, 'home');
                },
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Forget Your password?',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('bs');
                },
                child: const Center(
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                        text: 'Don’t have an account? ',
                        style: TextStyle(fontSize: 18)),
                    TextSpan(
                        text: "Sign up",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                  ])),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
/*  backgroundColor: Colors.yellow,
     body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Positioned(
                child: Text(
                  'Welcome to curve',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                top: 173,
                left: 81,
                right: 81,
              ),
              Positioned(
                child: Text(
                  "Login to your account",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                left: 104,
                right: 103,
                top: 240,
              ),
              Positioned(
                child: Container(
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      
                  padding: EdgeInsets.only(left: 7),
                  width: 311,
                  height: 48,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.yellow,
                  ),
                ),
                top: 333,
                right: 32,
                left: 32,
              ),
              Positioned(
                child: Container(
                  child: TextField(
                    
                    textInputAction: TextInputAction.done,
                    obscureText: true,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.visibility),
                        hintText: "Password",
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                        ),
                        border: InputBorder.none),
                  ),
                  padding: EdgeInsets.only(left: 7),
                  width: 311,
                  height: 48,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.yellow,
                  ),
                ),
                top: 397,
                right: 32,
                left: 32,
              ),
              Positioned(
                child: ElevatedButton(onPressed: (){}, 
                child: Text('Login',style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal:140 ,vertical:15 ))
                ),
                ),
                top: 483,
                right: 32,
                left: 32,

              ),
              Positioned(child: Text('Forgot your password?',style: TextStyle(fontSize: 18,),),
              top:563.5 ,
              right: 88.5,
              left: 88.5,
              ),


            ],
          ),
        ),
      ),
  
    
*/
