import 'package:flutter/material.dart';

class EditProfileForm extends StatelessWidget {
  const EditProfileForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          children: [
            TextFormField(),
            TextFormField(),
            TextFormField(),
            TextFormField(
              
            ),
          ],
        ),
      ),
    );
  }
}
