import 'package:flutter/material.dart';

class SpeakerDetailSessionTile extends StatelessWidget {
  const SpeakerDetailSessionTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("awd"),
              Text("awd"),
              Text("awd"),
            ],
          ),
        ),
      ),
    );
  }
}
