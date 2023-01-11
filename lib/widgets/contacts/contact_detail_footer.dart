import 'package:flutter/material.dart';
import 'package:gpca_networking/screens/event/exhibitor/exhibitor_detail_screen.dart';
import 'package:gpca_networking/screens/event/speaker/speaker_detail_screen.dart';
import 'package:gpca_networking/screens/event/sponsor/sponsor_detail_screen.dart';

class ContactDetailFooter extends StatelessWidget {
  final String baseId;
  final String eventId;
  final String contactType;
  final bool isActive;

  ContactDetailFooter({
    required this.baseId,
    required this.eventId,
    required this.contactType,
    required this.isActive,
  });

  String get getRoute {
    switch (contactType.toLowerCase()) {
      case "speaker":
        return SpeakerDetailScreen.routeName;
      case "exhibitor":
        return ExhibitorDetailScreen.routeName;
      case "sponsor":
        return SponsorDetailScreen.routeName;
      default:
        return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
              padding: const EdgeInsets.symmetric(horizontal: 20),
            ),
            onPressed: isActive
                ? () => Navigator.of(context)
                    .pushNamed(getRoute, arguments: [baseId, eventId])
                : null,
            child: Text("Read more"),
          ),
          if (!isActive)
            Text(
              "Unforunately this ${contactType.toLowerCase()} \nhas been removed from the program",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontStyle: FontStyle.italic, color: Colors.red.shade400),
            ),
        ],
      ),
    );
  }
}
