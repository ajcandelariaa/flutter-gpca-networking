import 'package:flutter/material.dart';

class EventDrawerFooter extends StatelessWidget {
  const EventDrawerFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Sponsored by:',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            Container(
              child: Image.asset(
                'assets/images/sabic_logo.png',
                width: 150,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        Text("App Version: 2.0.0"),
      ],
    );
  }
}
