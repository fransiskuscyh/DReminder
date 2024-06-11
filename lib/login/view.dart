// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/menu-pages/register/view.dart';
// import 'package:flutter_application_1/services/api.dart';
// import 'package:http/http.dart' as http;
// import 'package:shared_preferences/shared_preferences.dart';


// class LoginScreen extends StatefulWidget {
//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();

//   void loginUser() async {
//     try {
//       var response = await Api.login(
//         emailController.text,
//         passwordController.text,
//       );
//       String token = response.data['token'];

//       Store the token
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//       await prefs.setString('auth_token', token);

//       print('Login successful. Token: $token');
//     } catch (e) {
//       print('Login error: $e');
//       // Handle login error
//     }
//   }

//   void navigateToRegister() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => RegisterScreen()),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Login')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
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
//               onPressed: loginUser,
//               child: Text('Login'),
//             ),
//             SizedBox(height: 20),
//             GestureDetector(
//               onTap: navigateToRegister,
//               child: Text(
//                 'Don\'t have an account? Sign up',
//                 style: TextStyle(
//                   color: Colors.blue,
//                   decoration: TextDecoration.underline,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
