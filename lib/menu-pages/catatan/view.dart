import 'package:flutter/material.dart';
import 'package:flutter_application_1/menu-pages/util/dialog_box.dart';
import '../util/todo_tile.dart';
import 'controller.dart';

class CatatanView extends StatefulWidget {
  @override
  _CatatanViewState createState() => _CatatanViewState();
}

class _CatatanViewState extends CatatanController {

  final _dialogController = TextEditingController();
 
  List toDoList = [
    ['hello', false],
    ['hai', false],
  ];

  void CheckboxChange(bool? value, int index) {
    setState(() {
      toDoList[index][1] =  !toDoList[index][1];
    });
  }

  void saveNewTask() {
    setState(() {
      toDoList.add([_dialogController.text, false]);
      _dialogController.clear();
    });
    Navigator.of(context).pop();
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
      toDoList.removeAt(index);
    });
  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          title: Text('Notes'),
          centerTitle: true,
          backgroundColor: Colors.yellow,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.yellow,
          onPressed: createNewTask,
          child: Icon(Icons.add),
        ),
        body: ListView.builder(
          itemCount: toDoList.length,
          itemBuilder: (context, index) {
            return TodoTile(
              taskName: toDoList[index][0],
              taskCompleted: toDoList[index][1],
              onChanged: (value) => CheckboxChange(value, index),
              deleteFunction: (context) => deleteTask,
            );
            },
        ),
    );
  }
}