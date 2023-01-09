import 'package:flutter/material.dart';

class FeedbackForm extends StatefulWidget {
  const FeedbackForm({Key? key}) : super(key: key);

  @override
  State<FeedbackForm> createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Please rate your experience:"),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Icon(Icons.emoji_emotions_outlined),
                Icon(Icons.emoji_emotions_outlined),
                Icon(Icons.emoji_emotions_outlined),
                Icon(Icons.emoji_emotions_outlined),
                Icon(Icons.emoji_emotions_outlined),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Text("Additional Comments:"),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
            ),
            const SizedBox(
              height: 10,
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
