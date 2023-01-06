import 'package:flutter/material.dart';

class FeedbackForm extends StatelessWidget {
  const FeedbackForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Please rate your experience:"),
            SizedBox(
              height: 15,
            ),
            Text("Additional Comments:"),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: null,
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
