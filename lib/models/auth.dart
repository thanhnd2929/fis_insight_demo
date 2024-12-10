import 'package:fis_demo/models/auth.dart';

class Auth {
  final int statusCode;
  final String message;
  final LoginData? data;

  Auth({required this.statusCode, required this.message, this.data});

  factory Auth.formJson(Map<String, dynamic> json) {
    return Auth(
      statusCode: json['statusCode'],
      message: json['message'],
      data: json['data'] != null ? LoginData.fromJson(json['data']) : null,
    );
  }
}

class LoginData {
  final String access_token;

  LoginData({required this.access_token});

  factory LoginData.fromJson(Map<String, dynamic> json) {
    return LoginData(
      access_token: json['access_token'],
    );
  }
}
