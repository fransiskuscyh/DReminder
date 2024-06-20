
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Api {
  static Dio dio = Dio(BaseOptions(
    baseUrl: 'http://10.0.2.2:8000/api/', 
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

  Future<Map<String, dynamic>> getUserProfile() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      String token = prefs.getString('auth_token') ?? '';
      final response = await dio.get(
        '/profile',
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );
      return response.data;
    } catch (e) {
      if (e is DioError) {
        throw Exception('Failed to load user profile: ${e.response?.data['message'] ?? e.message}');
      }
      throw Exception('Failed to load user profile: $e');
    }
  }
}