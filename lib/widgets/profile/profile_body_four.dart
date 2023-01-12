import 'package:flutter/material.dart';

class ProfileBodyFour extends StatelessWidget {
  final String badgeNumber, vistorType, country;

  ProfileBodyFour({
    required this.badgeNumber,
    required this.vistorType,
    required this.country,
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
                    Icons.badge_outlined,
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
                        "Badge Number:",
                        style: TextStyle(color: Colors.grey.shade800),
                      ),
                      Text(
                        badgeNumber,
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
                    Icons.type_specimen,
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
                        "Visitor Type:",
                        style: TextStyle(color: Colors.grey.shade800),
                      ),
                      Text(
                        vistorType,
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
                    Icons.map_outlined,
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
                        "Country:",
                        style: TextStyle(color: Colors.grey.shade800),
                      ),
                      Text(
                        country,
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
