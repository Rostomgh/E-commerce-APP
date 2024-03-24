import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String hintText;
  final TextEditingController mycontoller;
  const CustomText(
      {super.key, required this.hintText, required this.mycontoller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: mycontoller,
      obscureText: true,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
          filled: true,
          fillColor: Colors.yellow,
          hintText:hintText,
          hintStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: const BorderSide(color: Colors.black))),
    );
  }
}
