import 'package:flutter/material.dart';

class AppDrawerFooter extends StatelessWidget {
  const AppDrawerFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Image.asset('assets/images/gpca-networking-logo.png', width: 150,),
        ),
        Text('App version: 2.0.0', style: TextStyle(fontSize: 14, color: Colors.grey),),
      ],
    );
  }
}