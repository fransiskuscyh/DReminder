import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {

  List toDoList = [];

  final _myBox = Hive.box('mybox');

  void createInitialData() {
    toDoList = [
      ["make", false],
      ['see', true],
    ];
  }

  void loadData() {
    toDoList = _myBox.get("TODOLIST"); 
  }

  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }  
}