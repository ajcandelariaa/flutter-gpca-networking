import 'package:flutter/material.dart';
import 'package:gpca_networking/screens/event/event_detail_screen.dart';
import 'package:gpca_networking/screens/main/forgot_password_screen.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);
  
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _passwordVisible = false;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  void _goToEventDetailScreen(ctx) {
    final snackBar = SnackBar(
      duration: const Duration(seconds: 3),
      action: SnackBarAction(
        label: "Dismiss",
        onPressed: () {},
      ),
      content: const Text(
        'Logged in succesfully!',
      ),
    );

    ScaffoldMessenger.of(ctx)
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);

    Navigator.of(context)
        .pushNamedAndRemoveUntil(EventDetailScreen.routeName, (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20, left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              'assets/images/sc.png',
              width: 230,
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      prefixIcon: const Icon(Icons.person, color: Colors.grey),
                      labelText: "Username",
                      labelStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: !_passwordVisible,
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      prefixIcon: const Icon(Icons.lock, color: Colors.grey),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
                      labelText: "Password",
                      labelStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () => Navigator.of(context).pushNamed(ForgotPasswordScreen.routeName),
            child: const Text(
              'Forgot your password?',
              style: TextStyle(color: Colors.grey, fontSize: 12, ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                ),
              ),
              onPressed: () => _goToEventDetailScreen(context),
              child: const Text('Sign in'),
            ),
          )
        ],
      ),
    );
  }
}
