import 'package:flutter/material.dart';
import './controller.dart';

class KategoriView extends StatefulWidget {
  @override
  _KategoriViewState createState() => _KategoriViewState();
}

class _KategoriViewState extends KategoriController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List Kategori'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
    );
  }
}