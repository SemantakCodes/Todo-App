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
  List ToDoList = [
    
  ];

  //fetch data from text field
  final _textController = TextEditingController();

  //methods
  void checkBoxChanged(bool? value, int index)
  {
    setState(() 
    {
      ToDoList[index][1] = !ToDoList[index][1];
    }
    );
  }

  //Save New Task
  void saveNewTask()
  {
    setState(() {
      ToDoList.add([_textController.text, false]);
      _textController.clear();
    });
    Navigator.of(context).pop();
  }

  //Create a new task
  void createNewTask()
  {
    showDialog
    (
      context: context, 
      builder: (context) 
      {
        return DialougeBox
        (
          controller: _textController,
          onSave: saveNewTask,
          onCancel: () => Navigator.of(context).pop(),
        );
      }
    );
  }

  void deleteTask(int index)
  {
    setState(() {
      ToDoList.removeAt(index);
    });
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
        itemCount: ToDoList.length,

        itemBuilder: (context, index)
        {
          return Notepages
          (
            deleteTiles: (context) => deleteTask(index),
            taskCompleted: ToDoList[index][1], 
            taskName: ToDoList[index][0], 
            onChanged: (value) => checkBoxChanged(value, index),
          );
        }
        
        
      ),
      
    );
  }
}