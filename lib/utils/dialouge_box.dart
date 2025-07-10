import 'package:flutter/material.dart';
import 'package:todo_app/utils/my_buttons.dart';

class DialougeBox extends StatelessWidget {
  const DialougeBox({super.key});

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
          children: 
          [
            TextField
            (
              
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
              children: [
                //save button
                MyButtons(text: "SAVE", onPressed: (){}),
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