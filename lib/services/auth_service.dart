import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:fis_demo/models/auth.dart';

class AuthService {
  final String baseURL;
  AuthService({required this.baseURL});

  Future<Auth> login(String username, String password, bool remember) async {
    final url = Uri.parse('$baseURL/auth/login');
    final Map<String, dynamic> body = {
      "username": username,
      "password": password,
      "remember": remember,
    };

    try {
      final response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(body),
      );
      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        print('json ${jsonData}');
        return Auth.formJson(jsonData);
      } else {
        throw Exception('${response.statusCode}');
      }
    } catch (e) {
      throw Exception('$e');
    }
  }
}
