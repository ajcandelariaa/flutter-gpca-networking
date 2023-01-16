import 'package:flutter/material.dart';
import 'package:gpca_networking/screens/event/profile/profile_screen.dart';

class ChangePasswordFeedbackScreen extends StatelessWidget {
  const ChangePasswordFeedbackScreen({Key? key}) : super(key: key);
  static const routeName = "/change-password-feedback";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change password feedback"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("assets/images/change_password_feedback.png"),
                SizedBox(height: 20,),
                Text(
                  "Password Changed",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5,),
                Text(
                  "Your password has been changed succesfully",
                  style: TextStyle(color: Colors.grey.shade500),
                ),
                SizedBox(height: 30,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(ProfileScreen.routeName);
                  },
                  child: Text("GO BACK TO PROFILE"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
