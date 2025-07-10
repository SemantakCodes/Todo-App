// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Notepages extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteTiles;
  
  Notepages({super.key, 
      required this.taskCompleted,
      required this.taskName, 
      required this.onChanged,
      required this.deleteTiles
    });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.20),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(), 
          children: [
            SlidableAction(
              borderRadius: BorderRadius.circular(15),
              onPressed: deleteTiles, 
              icon: Icons.delete,
              backgroundColor: Colors.red.shade400,
            )
          ]
        ),

        child: Container(
          decoration: BoxDecoration(
            color: Colors.yellow,
          ),
          width: 350,
          height: 75,
          padding: EdgeInsets.all(25),
          child: Row(
            children: [
            Text(
              taskName, 
              style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              decoration: taskCompleted ? TextDecoration.lineThrough : TextDecoration.none,
              ),
            ),
            Checkbox(
              value: taskCompleted, 
              onChanged: onChanged,
              activeColor: Colors.black,
            ),
            ],
          )
            
        ),
      ),
    );
  }
}