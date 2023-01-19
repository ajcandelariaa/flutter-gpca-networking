import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/user_profile_provider.dart';
import 'package:gpca_networking/widgets/forms/edit_profile_form.dart';
import 'package:provider/provider.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);
  static const routeName = "/edit-profile";

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProfileProvider>(context).getProfile(id: "1", eventId: "1");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit profile"),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              EditProfileForm(
                userData: user,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
