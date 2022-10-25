import 'package:flutter/material.dart';
import 'package:gpca_networking/screens/login_screen.dart';

class Event extends StatelessWidget {
  final String eventId;
  final String eventName;
  final String eventDate;
  final String eventVenue;
  final String eventLogo;

  Event({
    required this.eventId,
    required this.eventName,
    required this.eventDate,
    required this.eventVenue,
    required this.eventLogo,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context)
          .pushNamed(LoginScreen.routeName, arguments: eventId),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(eventName),
        ),
      ),
    );
  }
}
