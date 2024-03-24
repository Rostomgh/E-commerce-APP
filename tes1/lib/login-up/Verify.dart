import 'package:flutter/material.dart';
import 'package:tes1/compo/custombutton.dart';

class Verif extends StatefulWidget {
  const Verif({super.key});

  @override
  State<Verif> createState() => _VerifState();
}

class _VerifState extends State<Verif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Column(
        children: [
          Text(
            'Verify your email',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w800, color: Colors.black),
          ),
          SizedBox(
            height: 29,
          ),
          Text(
            ' We have sent you an SMS with a code to enter number',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          SizedBox(
            height: 189,
          ),
          CustomButton(
            text: 'Next',
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/welcome');
            },
          )
        ],
      ),
    );
  }
}
