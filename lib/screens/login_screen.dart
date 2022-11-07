import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/theme_provider.dart';
import 'package:gpca_networking/widgets/login_form.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';
  const LoginScreen({Key? key}) : super(key: key);

  _onBackButtonPress(ctx) {
    Provider.of<ThemeProvider>(ctx, listen: false).toggleThemeData('main');
    Navigator.of(ctx).pop();
  }

  @override
  Widget build(BuildContext context) {
    print('This is login_screen');
    return WillPopScope(
      onWillPop: () => _onBackButtonPress(context),
      child: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Login'),
            centerTitle: true,
          ),
          body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(context).primaryColor.withOpacity(0.5),
                        ),
                        const BoxShadow(
                          color: Colors.white,
                          spreadRadius: -1.0,
                          blurRadius: 2.0,
                        ),
                      ],
                    ),
                    child: const LoginForm(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Welcome to the GPCA Networking app. Get exclusive access to this app offered to all registered delegates of GPCA events.',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'To access this app, please use the login credentials sent to your registered email addess.',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'If you have not yet registered, please email at forumregistration@gpca.org.ae',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Learn more by visiting www.gpca.org.ae.',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
