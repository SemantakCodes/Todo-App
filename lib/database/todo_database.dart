import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {

    // ignore: non_constant_identifier_names
    List ToDoList = [];

  //reference the box
  final _mybox = Hive.box('myBox');


  //methods

  //first time ever opening this app
  void createInitialData(){
    ToDoList = [
    ["Task 1", false], 
    ["Task 2", true]
    ];
  }


  //Loading the data 
  // ignore: non_constant_identifier_names
  void LoadData(){
    ToDoList = _mybox.get("ToDoList");
  }


  //Updating the data
  // ignore: non_constant_identifier_names
  void UpdateData(){
    _mybox.put("ToDoList", ToDoList);
  }
}//hello??