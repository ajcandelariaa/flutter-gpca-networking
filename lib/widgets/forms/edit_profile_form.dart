import 'package:flutter/material.dart';
import 'package:gpca_networking/models/user_profile_model.dart';

class EditProfileForm extends StatelessWidget {
  // final String id;
  // final String eventId;
  // final String username;
  // final String salutation, firstName, middleName, lastName;
  // final String emailAddress, mobileNumber, landlineNumber;
  // final String companyName, jobTitle, country;
  final UserProfileModel userData;

  EditProfileForm({
    required this.userData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(labelText: "First name"),
              initialValue: userData.firstName,
            ),
            TextFormField(),
            TextFormField(),
            TextFormField(
              decoration: const InputDecoration(labelText: "Last Name"),
              initialValue: userData.lastName,
            ),
          ],
        ),
      ),
    );
  }
}
