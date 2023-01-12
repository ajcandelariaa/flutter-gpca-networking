import 'package:flutter/material.dart';

class ProfileBodyThree extends StatelessWidget {
  final String username, password;

  ProfileBodyThree({
    required this.username,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.account_circle_outlined,
                    size: 30,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Username:",
                        style: TextStyle(color: Colors.grey.shade800),
                      ),
                      Text(
                        username,
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.lock,
                    size: 30,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Password:",
                        style: TextStyle(color: Colors.grey.shade800),
                      ),
                      Text(
                        password,
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
