// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() 
// {
//   runApp(MyApp());  
// }

// class MyApp extends StatefulWidget {
//   MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => MyAppState();
// }

// class MyAppState extends State<MyApp> {
//   TextEditingController name = TextEditingController();
//   TextEditingController username = TextEditingController();
//   TextEditingController password = TextEditingController();

//   Future<void> insertrecord() async {
//     if(name.text!="" || username.text!="" || password.text!="") {
//       try {
//         String database = "http://192.168.10.8/api_remind/insert_record.php";
      
//         var result=await http.post(Uri.parse(database), body: {
//           "name": name.text,
//           "username": username.text,
//           "password": password.text
//         });
//         var response=jsonDecode(result.body);
//         if(response["success"]=="true")
//         {
//           print("Record Inserted");
//           name.text = "";
//           username.text = "";
//           password.text = "";
//         } else {
//           print("some issue");
//         }        
//       } catch(e){
//         print(e);
//       }
//       } else {
//         print("please Fill All Fileds");
//       }
//     }
    
//   @override 
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("DReminder"),
//           centerTitle: true,
//         ),
//         body: Column(children: [
//           Container(
//             margin: EdgeInsets.all(10),
//             child: TextFormField(
//               controller: name,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(), label: Text("Enter the Name")),
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.all(10),
//             child: TextFormField(
//               controller: username,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 label: Text('Enter the Username')),
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.all(10),
//             child: TextFormField(
//               controller: password,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 label: Text('Enter the Password')),
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.all(10),
//             child: ElevatedButton(
//               onPressed: () {
//                 insertrecord();
//               },
//               child: Text('Login'),
//             ),
//           )
//         ],),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import './home.dart';

void main() => runApp(HomeApp());