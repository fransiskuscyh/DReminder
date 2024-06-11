// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/register/controller.dart';
// import 'package:flutter_application_1/services/api.dart';
// import 'package:http/http.dart' as http;
// import 'package:shared_preferences/shared_preferences.dart';

// class RegisterScreen extends StatefulWidget {
//   @override
//   _RegisterScreenState createState() => _RegisterScreenState();
// }

// class _RegisterScreenState extends State<RegisterScreen> {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();

//   void registerUser() async {
//     try {
//       var response = await Api.register(
//         nameController.text,
//         emailController.text,
//         passwordController.text,
//       );
//       String token = response.data['token'];

//       // Store the token
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//       await prefs.setString('auth_token', token);

//       print('Registration successful. Token: $token');
//     } catch (e) {
//       print('Registration error: $e');
//       // Handle registration error
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Register')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: nameController,
//               decoration: InputDecoration(labelText: 'Name'),
//             ),
//             TextField(
//               controller: emailController,
//               decoration: InputDecoration(labelText: 'Email'),
//             ),
//             TextField(
//               controller: passwordController,
//               decoration: InputDecoration(labelText: 'Password'),
//               obscureText: true,
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: registerUser,
//               child: Text('Register'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }