import 'package:flutter/material.dart';
import 'package:gpca_networking/widgets/forms/edit_profile_form.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);
  static const routeName = "/edit-profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit profile"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              
              EditProfileForm(),
            ],
          ),
        ),
      ),
    );
  }
}
