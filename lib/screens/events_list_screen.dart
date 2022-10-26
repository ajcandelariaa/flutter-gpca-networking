import 'package:flutter/material.dart';
import 'package:gpca_networking/constants/api_constants.dart';
import 'package:gpca_networking/models/event_model.dart';
import 'package:gpca_networking/providers/event_provider.dart';
import 'package:gpca_networking/services/api_service.dart';
import 'package:gpca_networking/widgets/events/event.dart';
import 'package:provider/provider.dart';

class EventsListScreen extends StatelessWidget {
  const EventsListScreen({Key? key}) : super(key: key);
  static const routeName = '/events-list-screen';

  @override
  Widget build(BuildContext context) {
    print('This is event_list_screen');
    return Scaffold(
      appBar: AppBar(
        title: Text('GPCA Networking'),
      ),
      body: FutureBuilder(
        future: Provider.of<EventProvider>(context, listen: false).getEvents(),
        builder: (ctx, snapshot) =>
            snapshot.connectionState == ConnectionState.waiting
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Consumer<EventProvider>(
                    child: const Center(
                      child: Text('Got no events yet, start adding some!'),
                    ),
                    builder: (ctx, result, ch) => result.events.isEmpty
                        ? ch!
                        : ListView.builder(
                            itemCount: result.events.length,
                            itemBuilder: (ctx, index) {
                              return Event(
                                eventId: result.events[index].eventId,
                                eventName: result.events[index].eventName,
                                eventDate: result.events[index].eventDate,
                                eventVenue: result.events[index].eventVenue,
                                eventLogo: result.events[index].eventLogo,
                              );
                            },
                          ),
                  ),
      ),
    );
  }
}
