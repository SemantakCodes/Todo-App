// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app/database/todo_database.dart';
import 'package:todo_app/utils/dialouge_box.dart';
import 'package:todo_app/utils/todo_tiles.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {

  //init the box
  final _myBox = Hive.box('myBox');
  TodoDatabase db = TodoDatabase();

  @override
  void initState() {
    //creates default data on first time 
    if(_myBox.get("ToDoList") == null){
      db.createInitialData();
    }
    else{
      db.LoadData();
    }
    super.initState();
  }

  //fetch data from text field
  final _textController = TextEditingController();

  //methods
  void checkBoxChanged(bool? value, int index)
  {
    setState(() 
    {
      db.ToDoList[index][1] = !db.ToDoList[index][1];
    }
    );
    
    db.UpdateData();
  }

  //Save New Task
  void saveNewTask()
  {
    setState(() {
      db.ToDoList.add([_textController.text, false]);
      _textController.clear();
    });
    Navigator.of(context).pop();
    db.UpdateData();
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
    db.UpdateData();
  }

  void deleteTask(int index)
  {
    setState(() {
      db.ToDoList.removeAt(index);
    });
    db.UpdateData();
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
        itemCount: db.ToDoList.length,

        itemBuilder: (context, index)
        {
          return Notepages
          (
            deleteTiles: (context) => deleteTask(index),
            taskCompleted: db.ToDoList[index][1], 
            taskName: db.ToDoList[index][0], 
            onChanged: (value) => checkBoxChanged(value, index),
          );
        }
        
        
      ),
      
    );
  }
}