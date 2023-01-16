import 'package:flutter/material.dart';
import 'package:gpca_networking/screens/event/profile/edit_profile_screen.dart';
import 'package:gpca_networking/screens/event/profile/change_password_screen.dart';

class ProfileFooter extends StatelessWidget {
  const ProfileFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton.icon(
          icon: const Icon(Icons.edit_note),
          onPressed: () {
            Navigator.of(context).pushNamed(EditProfileScreen.routeName);
          },
          label: const Text(
            "Edit profile",
            style: TextStyle(fontSize: 16),
          ),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            backgroundColor: Theme.of(context).primaryColor,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        ElevatedButton.icon(
          icon: const Icon(Icons.lock_person_outlined, size: 20,),
          onPressed: () {
            Navigator.of(context).pushNamed(ChangePasswordScreen.routeName);
          },
          label: const Text(
            "Change password",
            style: TextStyle(fontSize: 16),
          ),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            backgroundColor: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }
}
