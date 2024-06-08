import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/database.dart';
import 'package:flutter_application_1/menu-pages/util/dialog_box.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../util/todo_tile.dart';
import 'controller.dart';
import 'package:hive/hive.dart';




class CatatanView extends StatefulWidget {
  @override
  _CatatanViewState createState() => _CatatanViewState();
}

class _CatatanViewState extends CatatanController {
  
  final _myBox = Hive.box('mybox');
  TodoDatabase db = TodoDatabase();

  @override
  void initState() {

    if (_myBox.get("TODOLIST") == null) {
      db.createInitialData();
    } else {
      db.loadData();
    }

    super.initState();
  }

  final _dialogController = TextEditingController();

  void CheckboxChange(bool? value, int index) {
    setState(() {
      db.toDoList[index][1] =  !db.toDoList[index][1];
    });
    db.updateDatabase();
  }

  void saveNewTask() {
    setState(() {
      db.toDoList.add([_dialogController.text, false]);
      _dialogController.clear();
    });
    Navigator.of(context).pop();
    db.updateDatabase();
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          dialogController: _dialogController,
          onSave: saveNewTask,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  void deleteTask(int index) {
    setState(() {
      db.toDoList.removeAt(index);
    });
    db.updateDatabase();
  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          title: Text('Notes TO-DO'),
          centerTitle: true,
          backgroundColor: Colors.yellow,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.yellow,
          onPressed: createNewTask,
          child: Icon(Icons.add),
        ),
        body: ListView.builder(
          itemCount: db.toDoList.length,
          itemBuilder: (context, index) {
            return TodoTile(
              taskName: db.toDoList[index][0],
              taskCompleted: db.toDoList[index][1],
              onChanged: (value) => CheckboxChange(value, index),
              deleteFunction: (context) => deleteTask(index),
            );
          },
        ),
      );
  }
}