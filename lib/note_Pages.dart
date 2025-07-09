import 'package:flutter/material.dart';

class Notepages extends StatelessWidget {
  const Notepages({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.20),
      child: Container(
        width: 350,
        height: 75,
        color: Colors.yellow,
        padding: EdgeInsets.all(25),
        child: Text("Work", style: TextStyle(color: Colors.black, fontSize: 20),),
      ),
    );
  }
}