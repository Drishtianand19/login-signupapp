import 'package:flutter/material.dart';
class MyTextField extends StatelessWidget {
  final controller;// controller is a variable that catches the text u have entered
  final String hintText;
  final bool obscureText;// something u don't want to show

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0 ),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration:
        InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.white70, width: 3.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          fillColor: Color(0xFFFDEBED),
          filled: true,
          hintText: hintText,
          hoverColor: Colors.pinkAccent,

        ),

      ) ,
    )
    ;
  }
}
