import 'dart:io';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_application_1/login/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/register/view.dart';
import 'package:flutter_application_1/services/api.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_application_1/menu-pages/home/view.dart';

void main() async {

  await Hive.initFlutter();

  var box = await Hive.openBox('mybox');

  runApp(Dremind());

}


class Dremind extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}