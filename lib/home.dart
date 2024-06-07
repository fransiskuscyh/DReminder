import "package:flutter/material.dart";
import 'menu-pages/home/view.dart';
import 'menu-pages/catatan/view.dart';
import 'menu-pages/kategori/view.dart';
import 'menu-pages/register/view.dart';


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
