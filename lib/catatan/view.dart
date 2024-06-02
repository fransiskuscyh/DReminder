import 'package:flutter/material.dart';
import './controller.dart';

class CatatanView extends StatefulWidget {
  @override
  _CatatanViewState createState() => _CatatanViewState();
}

class _CatatanViewState extends CatatanController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List Catatan'),
          centerTitle: true,
          backgroundColor: Colors.pinkAccent,
        ),
    );
  }
}