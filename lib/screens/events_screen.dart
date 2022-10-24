import 'package:flutter/material.dart';
import 'package:gpca_networking/models/event_model.dart';
import 'package:gpca_networking/widgets/events/event.dart';

class EventsScreen extends StatelessWidget {
  final List<EventModel> _events = [
    EventModel(
      eventId: '1',
      eventName: 'Supply Chain Conference',
      eventDate: "17-19 May, 2022",
      eventVenue: 'Place 1',
      eventLogo: 'url1',
    ),
    EventModel(
      eventId: '2',
      eventName: 'Plastics Conference',
      eventDate: "17-19 May, 2022",
      eventVenue: 'Place 1',
      eventLogo: 'url1',
    ),
    EventModel(
      eventId: '3',
      eventName: 'Agri-Nutrients Conference',
      eventDate: "17-19 May, 2022",
      eventVenue: 'Place 1',
      eventLogo: 'url1',
    ),
    EventModel(
      eventId: '4',
      eventName: 'Research & Innovation Conference',
      eventDate: "17-19 May, 2022",
      eventVenue: 'Place 1',
      eventLogo: 'url1',
    ),
    EventModel(
      eventId: '5',
      eventName: 'Responsible Care',
      eventDate: "17-19 May, 2022",
      eventVenue: 'Place 1',
      eventLogo: 'url1',
    ),
    EventModel(
      eventId: '6',
      eventName: 'GPCA Annual Forum',
      eventDate: "17-19 May, 2022",
      eventVenue: 'Place 1',
      eventLogo: 'url1',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GPCA Networking'),
      ),
      body: ListView.builder(
        itemCount: _events.length,
        itemBuilder: (ctx, index) {
          return Event(
            eventName: _events[index].eventName,
            eventDate: _events[index].eventDate,
            eventVenue: _events[index].eventVenue,
            eventLogo: _events[index].eventLogo,
          );
        },
      ),
    );
  }
}
