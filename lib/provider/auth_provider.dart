import 'package:fis_demo/models/auth.dart';
import 'package:fis_demo/services/auth_service.dart';
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  final AuthService _authService;
  Auth? _auth;
  bool _isLoading = false;

  AuthProvider({required AuthService authService}) : _authService = authService;

  Auth? get auth => _auth;
  String? get accessToken => _auth?.data?.access_token;
  bool get isLoading => _isLoading;

  Future<Auth> login(String username, String password, bool remember) async {
    _isLoading = true;
    notifyListeners();

    try {
      final response = await _authService.login(username, password, remember);
      _auth = response;
      return response;
    } catch (e) {
      throw Exception('Login failed: $e');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
