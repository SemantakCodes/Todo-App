// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  //Variables
  final String text;
  VoidCallback onPressed;

  
  
MyButtons({super.key, required this.text, required this.onPressed});


  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.yellow[400],
      focusColor: Colors.yellow[200],
      child: Text(text),
    );
  }
}