import 'package:flutter/material.dart';

class Event extends StatelessWidget {
  final String eventName;
  final String eventDate;
  final String eventVenue;
  final String eventLogo;

  Event({
    required this.eventName,
    required this.eventDate,
    required this.eventVenue,
    required this.eventLogo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(eventName),
      ),
    );
  }
}
