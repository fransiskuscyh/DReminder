import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import './home.dart';

void main() async {

  await Hive.initFlutter();

  var box = await Hive.openBox('mybox');

  runApp(HomeApp());

}