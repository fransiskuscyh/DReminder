
import 'package:dio/dio.dart';

class Api {
  static Dio dio = Dio(BaseOptions(
    baseUrl: 'http://127.0.0.1:8000/ReminderApi/routes', // Replace with your API URL
    headers: {
      'Content-Type': 'application/json',
    },
  ));

  static Future<Response> login(String email, String password) async {
    return await dio.post('/login', data: {'email': email, 'password': password});
  }

  static Future<Response> register(String name, String email, String password) async {
    return await dio.post('/register', data: {'name': name, 'email': email, 'password': password});
  }

  static Future<Response> getUserProfile(String token) async {
    dio.options.headers['Authorization'] = 'Bearer $token';
    return await dio.get('/user-profile');
  }
}