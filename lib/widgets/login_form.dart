import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // gradient: LinearGradient(
        //   colors: [
        //     Colors.white,
        //     Theme.of(context).primaryColor.withOpacity(0.4),
        //   ],
        //   begin: Alignment.topCenter,
        //   end: Alignment.bottomCenter,
        //   stops: [0.4, 0.9],
        // ),
        // boxShadow: [
        //   BoxShadow(
        //     color: Theme.of(context).primaryColor,
        //     blurRadius: 3,
        //     spreadRadius: 2
        //   ),
        // ],
        color: Colors.grey,
      ),
      child: Column(
        children: [
          Image.asset(
            'assets/images/sc.png',
            width: 200,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
