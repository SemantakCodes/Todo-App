// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:todo_app/utils/dialouge_box.dart';
import 'package:todo_app/utils/todo_tiles.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  
  //variable
  List ToDoTile = [
    ["Drink Milk", false],["Drink MILF", false], ["Beat your WILLY", false]
  ];
  //methods
  void checkBoxChanged(bool? value, int index){
    setState(() {
      ToDoTile[index][1] = !ToDoTile[index][1];
    }
    );
  }

  //Create a new task
  void createNewTask(){
    showDialog
    (
      context: context, 
      builder: (context) 
      {
        return DialougeBox
        (
          
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      backgroundColor: Colors.yellow[200],
      appBar: AppBar
      (
        backgroundColor: Colors.yellow,
        elevation: 0,
        title: Text("TO DO APP"),
        centerTitle: true,
      ),

      floatingActionButton: FloatingActionButton
      (
        onPressed: createNewTask,
        child: Icon(Icons.add),
      ),
      body: ListView.builder
      (
        itemCount: ToDoTile.length,

        itemBuilder: (context, index)
        {
          return Notepages
          (
            taskCompleted: ToDoTile[index][1], 
            taskName: ToDoTile[index][0], 
            onChanged: (value) => checkBoxChanged(value, index),
          );
        }
        
        
      ),
      
    );
  }
}