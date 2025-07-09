import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  //methods
  void addtile();

  const Button({super.key, required this.addtile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(onPressed: addtile, child: Icon(Icons.add))
    );
  }
}