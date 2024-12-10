import 'package:fis_demo/screen/login.dart';
import 'package:fis_demo/services/auth_service.dart';
import 'package:fis_demo/provider/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AuthProvider(
            authService: AuthService(
                baseURL: 'https://dev.ddc.fis.vn/econstruction_api'),
          ),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: LoginScreen(),
    );
  }
}
