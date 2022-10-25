import 'package:flutter/material.dart';
import 'package:gpca_networking/constants/api_constants.dart';
import 'package:gpca_networking/models/event_model.dart';
import 'package:gpca_networking/services/api_service.dart';
import 'package:gpca_networking/widgets/events/event.dart';

class EventsListScreen extends StatefulWidget {
  static const routeName = '/';

  @override
  State<EventsListScreen> createState() => _EventsListScreenState();
}

class _EventsListScreenState extends State<EventsListScreen> {
  late List<EventModel>? _eventsList = [];

  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    _eventsList = await ApiServce().getEvents();
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GPCA Networking'),
      ),
      body: ListView.builder(
        itemCount: _eventsList!.length,
        itemBuilder: (ctx, index) {
          return Event(
            eventId: _eventsList![index].eventId,
            eventName: _eventsList![index].eventName,
            eventDate: _eventsList![index].eventDate,
            eventVenue: _eventsList![index].eventVenue,
            eventLogo: _eventsList![index].eventLogo,
          );
        },
      ),
    );
  }
}
