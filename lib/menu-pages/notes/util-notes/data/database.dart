import 'package:hive_flutter/hive_flutter.dart';

class NotesDatabase {

  List NotesList = [];

  final _myBox = Hive.box('mybox');

  void createInitialData() {
    NotesList = [
      // ["make", false],
      // ['see', true],
    ];
  }

  void loadData() {
    NotesList = _myBox.get("NOTES");
  }

  void updateDatabase() {
    _myBox.put("NOTES", NotesList);
  }  
}