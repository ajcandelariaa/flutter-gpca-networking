import 'package:flutter/material.dart';

class EventDrawerFooter extends StatelessWidget {
  const EventDrawerFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Image.asset(
            'assets/images/sabic_logo.png',
            width: 150,
            fit: BoxFit.fill,
          ),
        ),
        const Text(
          'Sponsored by:',
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
      ],
    );
  }
}
