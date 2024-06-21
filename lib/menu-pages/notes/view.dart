import 'package:flutter/material.dart';
import 'package:flutter_application_1/menu-pages/notes/util-notes/data/database.dart';
import 'package:flutter_application_1/menu-pages/notes/util-notes/dialog_box.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_application_1/menu-pages/notes/util-notes/notes_tile.dart';
import 'controller.dart';
import 'package:hive/hive.dart';




class NotesView extends StatefulWidget {
  @override
  _NotesViewState createState() => _NotesViewState();
}

class _NotesViewState extends NotesController {
  
  final _myBox = Hive.box('mybox');
  NotesDatabase db = NotesDatabase();

  @override
  void initState() {

    if (_myBox.get("NOTES") == null) {
      db.createInitialData();
    } else {
      db.loadData();
    }

    super.initState();
  }

  final _dialogController = TextEditingController();

  void CheckboxChange(bool? value, int index) {
    setState(() {
      setState(() {
      db.NotesList.add([_dialogController.text, false]);
      _dialogController.clear();
    });
    Navigator.of(context).pop();
    db.updateDatabase();
    });
    db.updateDatabase();
  }

  void saveNewTask() {
    setState(() {
      db.NotesList.add([_dialogController.text, false]);
      _dialogController.clear();
    });
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
      db.NotesList.removeAt(index);
    });
    db.updateDatabase();
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
        appBar: AppBar(
          title: Text('Notes'),
          centerTitle: true,
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: createNewTask,
          child: Icon(Icons.add),
        ),
        body: ListView.builder(
          itemCount: db.NotesList.length,
          itemBuilder: (context, index) {
            return NotesTile(
              taskName: db.NotesList[index][0],
              taskCompleted: db.NotesList[index][1],
              onChanged: (value) => CheckboxChange(value, index),
              deleteFunction: (context) => deleteTask(index),
            );
          },
        ),
      );
  }
}