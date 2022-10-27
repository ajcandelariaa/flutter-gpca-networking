import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/event_provider.dart';
import 'package:gpca_networking/widgets/events/event.dart';
import 'package:provider/provider.dart';

class EventsListScreen extends StatelessWidget {
  const EventsListScreen({Key? key}) : super(key: key);
  static const routeName = '/events-list-screen';

  Future<void> _refreshProducts(BuildContext context) async {
    await Provider.of<EventProvider>(context, listen: false).getEvents();
  }
  

  @override
  Widget build(BuildContext context) {
    print('This is event_list_screen');
    return Scaffold(
      appBar: AppBar(
        title: Text('GPCA Networking'),
      ),
      // body: ListView.builder(itemBuilder: (ctx, index) {
      //   return Event(
      //     eventId: result.events[index].eventId,
      //     eventName: result.events[index].eventName,
      //     eventDate: result.events[index].eventDate,
      //     eventVenue: result.events[index].eventVenue,
      //     eventLogo: result.events[index].eventLogo,
      //   );
      // }),
      
    );
  }
}
