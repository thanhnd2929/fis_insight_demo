import 'package:fis_demo/untils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscure = true;
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png'),
              const SizedBox(
                height: 16,
              ),
              Text(
                'FIS INSIGHT PORTAL',
                style: TextStyle(
                    color: hexToColor('#335271'),
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 50,
                      height: 6,
                      color: Colors.blue,
                    ),
                    Container(
                      width: 50,
                      height: 6,
                      color: Colors.orange,
                    ),
                    Container(
                      width: 50,
                      height: 6,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'ĐĂNG NHẬP HỆ THỐNG',
                style: TextStyle(
                    color: hexToColor('#ff9e24'),
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 16,
              ),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8), // Bo góc
                          borderSide: BorderSide.none, // Loại bỏ viền
                        ),
                        labelText: 'Tài Khoản',
                        filled: true,
                        fillColor: hexToColor('#e7eaec'),
                        prefixIcon: Icon(
                          Icons.account_box,
                          size: 30,
                          color: hexToColor('#b1bcc7'),
                        ),
                      ),
                      obscureText: _isObscure,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                          labelText: 'Mật Khẩu',
                          filled: true,
                          fillColor: hexToColor('#e7eaec'),
                          prefixIcon: Icon(
                            Icons.lock,
                            size: 30,
                            color: hexToColor('#b1bcc7'),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isObscure
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              size: 30,
                              color: hexToColor('#b1bcc7'),
                            ),
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                          )),
                      obscureText: _isObscure,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          side: BorderSide(
                            color: hexToColor('#FF9435'),
                            width: 2,
                          ),
                          checkColor: Colors.white,
                          activeColor: hexToColor('#FF9435'),
                          value: _isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked = value ?? false;
                            });
                          },
                        ),
                        Text(
                          'Ghi nhớ đăng nhập',
                          style: TextStyle(
                            fontSize: 16,
                            color: hexToColor('#FF9435'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: hexToColor('#FF9435'),
                        foregroundColor: Colors.white,
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'ĐĂNG NHẬP',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: hexToColor('#FF9435'),
                        foregroundColor: Colors.white,
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'ĐĂNG NHẬP BẰNG ARUZE',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Image.asset(
                      'assets/images/logo2.png',
                      width: 250,
                      height: 150,
                    ),
                    Text(
                      'Copyright 2019, FPT IS',
                      style:
                          TextStyle(fontSize: 16, color: hexToColor('#CED5DD')),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
