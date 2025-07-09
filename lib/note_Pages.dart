import 'package:flutter/material.dart';

class Notepages extends StatelessWidget {
  const Notepages({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      color: Colors.yellow,
      padding: EdgeInsets.all(50),
      child: Text("Work", style: TextStyle(color: Colors.black),),
    );
  }
}