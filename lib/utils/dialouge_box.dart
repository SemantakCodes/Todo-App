// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:todo_app/utils/my_buttons.dart';

class DialougeBox extends StatelessWidget {

  final TextEditingController controller;
  const DialougeBox({super.key, required this.controller,});

  @override
  Widget build(BuildContext context) {
    return AlertDialog
    (
      backgroundColor: Colors.yellow,
      content: Container
      (
        height: 120,
        child: Column
        (
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: 
          [
            TextField
            (
              controller: controller,
              decoration: InputDecoration
              (
                border: OutlineInputBorder
                (
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                hintText: "Your task...",

              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //save button
                MyButtons(text: "SAVE", onPressed: (){}),
                const SizedBox(width: 25,),
                //cancel button
                MyButtons(text: "CANCEL", onPressed: (){}),
              ],
            )
          ],
        ),
      ),
    );
  }
}