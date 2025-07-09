import 'package:flutter/material.dart';
import 'package:todo_app/note_pages.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  
  //variable
  List ToDoTile = [
    "Drink Milk","Drink MILF", "Beat your WILLY"
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        elevation: 0,
        title: Text("TO DO APP"),
        centerTitle: true,
        ),

      body: 
      ListView.builder(
        itemCount: ToDoTile.length,
        
      ),
      
    );
  }
}