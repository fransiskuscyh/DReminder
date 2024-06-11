import 'package:flutter/material.dart';
import 'controller.dart';

class NotesView extends StatefulWidget {
  @override
  _NotesViewState createState() => _NotesViewState();
}

class _NotesViewState extends NotesController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Notes'),
          foregroundColor: Colors.white,
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
    );
  }
}