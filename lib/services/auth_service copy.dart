import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:fis_demo/models/auth.dart';

class AuthService {
  // https://dev.ddc.fis.vn/econstruction_api/auth/login
  final String baseURL;

  AuthService({required this.baseURL});

  Future<Auth> login(String username, String password, bool remember) async {
    final url = Uri.parse('$baseURL/auth/login');

    final Map<String, dynamic> body = {
      "username": username,
      "password": password,
      "remember": remember,
    };

    print('Request Body: ${jsonEncode(body)}');

    try {
      final response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(body),
      );

      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        print('json ${jsonData}');
        // if (jsonData['statusCode'] == 1) {
        //   final auth = Auth.fromJson(jsonData);
        //   print('Auth object: $auth');
        //   return auth; // Trả về đối tượng Auth
        // } else {
        //   return Auth(
        //     statusCode: jsonData['statusCode'],
        //     message: jsonData['message'],
        //     data: null,
        //   );
        // }
        return Auth.formJson(jsonData);
      } else {
        throw Exception('${response.statusCode}');
      }
    } catch (e) {
      throw Exception('$e');
    }
  }
}
