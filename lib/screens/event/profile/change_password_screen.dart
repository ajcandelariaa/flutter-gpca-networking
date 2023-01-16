import 'package:flutter/material.dart';
import 'package:gpca_networking/widgets/forms/change_password_form.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  static const routeName = "/change-password";

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Change password"),
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
                ChangePasswordForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
