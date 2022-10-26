import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('This is login_screen');
    return Scaffold(
      appBar: AppBar(title: Text('Login'),),
      body: Center(child: Text('Login'),),
    );
  }
}