import 'package:fis_demo/untils/color.dart';
import 'package:fis_demo/untils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveHelper(context);
    return Scaffold(
      backgroundColor: hexToColor('#F4F8FB'),
      resizeToAvoidBottomInset: true,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: responsive.screenHeight * 0.02,
              horizontal: responsive.screenWidth * 0.1,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/fpt.png',
                  width: responsive.screenWidth * 0.5,
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  'FIS INSIGHT PORTAL',
                  style: TextStyle(
                      color: hexToColor('#335271'),
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  width: responsive.screenWidth * 0.48,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 50,
                        height: 4,
                        color: Colors.blue,
                      ),
                      Container(
                        width: 50,
                        height: 4,
                        color: Colors.orange,
                      ),
                      Container(
                        width: 50,
                        height: 4,
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
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 16,
                ),
                Column(
                  children: [
                    TextField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Tài Khoản',
                        hintStyle: TextStyle(
                          fontSize: 15.5,
                          color: hexToColor('#375474'),
                          fontWeight: FontWeight.w500,
                        ),
                        filled: true,
                        fillColor: hexToColor('#e7eaec'),
                        prefixIcon: Icon(
                          Icons.person,
                          size: 30,
                          color: hexToColor('#b1bcc7'),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 50,
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextField(
                      controller: _passwordController,
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Mật Khẩu',
                        hintStyle: TextStyle(
                          fontSize: 15.5,
                          color: hexToColor('#375474'),
                          fontWeight: FontWeight.w500,
                        ),
                        filled: true,
                        fillColor: hexToColor('#e7eaec'),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 14),
                          child: FaIcon(
                            FontAwesomeIcons.lock,
                            size: 25,
                            color: hexToColor('#b1bcc7'),
                          ),
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
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: responsive.screenHeight * 0.01,
                          horizontal: responsive.screenWidth * 0.02,
                        ),
                      ),
                      textAlign: TextAlign.center,
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
                            fontStyle: FontStyle.italic,
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
                      height: 10,
                    ),
                    Image.asset(
                      'assets/images/logo2.png',
                      width: responsive.screenWidth * 0.8,
                      height: responsive.screenHeight * 0.22,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Copyright© 2019, FPT IS',
                      style:
                          TextStyle(fontSize: 14, color: hexToColor('#BEC4C8')),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
