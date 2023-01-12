import 'package:flutter/material.dart';

class ProfileFullImageScreen extends StatelessWidget {
  const ProfileFullImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "image",
      child: Image.asset(
        "assets/images/sample_user.jpeg",
        alignment: Alignment.center,
      ),
    );
  }
}
