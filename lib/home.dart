import "package:flutter/material.dart";
import 'package:flutter_application_1/catatan/view.dart';
import 'package:flutter_application_1/kategori/view.dart';
import './home/view.dart';
import './catatan/view.dart';
import './kategori/view.dart';
import './register/view.dart';


class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hello',
      routes: {
        '/' : (BuildContext _) => HomeView(),
        '/catatan' : (BuildContext _) => CatatanView(),
        '/kategori' : (BuildContext _) => KategoriView(),
        '/register' : (BuildContext _) => RegisterView(),
      },
      initialRoute: '/',
    );
  }
}
