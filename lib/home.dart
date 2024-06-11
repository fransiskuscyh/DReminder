import "package:flutter/material.dart";
import 'menu-pages/home/view.dart';
import 'menu-pages/catatan todo/view.dart';
import 'menu-pages/notes/view.dart';

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DReminder',
      routes: {
        '/' : (BuildContext _) => HomeView(),
        '/catatan todo' : (BuildContext _) => CatatanView(),
        '/notes' : (BuildContext _) => NotesView(),
      },
      initialRoute: '/',
    );
  }
}
