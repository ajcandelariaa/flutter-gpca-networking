import 'package:flutter/material.dart';

class ProfileBodyTwo extends StatelessWidget {
  final String companyName, jobTitle;

  ProfileBodyTwo({
    required this.companyName,
    required this.jobTitle,
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
                    Icons.apartment_sharp,
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
                        "Company Name:",
                        style: TextStyle(color: Colors.grey.shade800),
                      ),
                      Text(
                        companyName,
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
                    Icons.indeterminate_check_box_outlined,
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
                        "Job Title:",
                        style: TextStyle(color: Colors.grey.shade800),
                      ),
                      Text(
                        jobTitle,
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
