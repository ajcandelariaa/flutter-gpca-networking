import 'package:flutter/material.dart';
import 'package:gpca_networking/models/event_model.dart';
import 'package:gpca_networking/providers/event_provider.dart';
import 'package:gpca_networking/widgets/drawers/app/app_drawer.dart';
import 'package:gpca_networking/widgets/event/event.dart';
import 'package:provider/provider.dart';

class EventsListScreen extends StatelessWidget {
  EventsListScreen({Key? key}) : super(key: key);
  static const routeName = '/';

  // Future<void> _refreshProducts(BuildContext context) async {
  //   await Provider.of<EventProvider>(context, listen: false).getEvents();
  // }

  final List<EventModel> _events = [
    EventModel(
      eventId: '1',
      eventName: 'Supply Chain Conference',
      eventDate: "17-19 May, 2022",
      eventVenue: 'Place 1',
      eventLogo: 'assets/images/sc.png',
    ),
    EventModel(
      eventId: '2',
      eventName: 'Plastics Conference',
      eventDate: "17-19 May, 2022",
      eventVenue: 'Place 1',
      eventLogo: 'assets/images/sc.png',
    ),
    EventModel(
      eventId: '3',
      eventName: 'Agri-Nutrients Conference',
      eventDate: "17-19 May, 2022",
      eventVenue: 'Place 1',
      eventLogo: 'assets/images/sc.png',
    ),
    EventModel(
      eventId: '4',
      eventName: 'Research & Innovation Conference',
      eventDate: "17-19 May, 2022",
      eventVenue: 'Place 1',
      eventLogo: 'assets/images/sc.png',
    ),
    EventModel(
      eventId: '5',
      eventName: 'Responsible Care Conference',
      eventDate: "17-19 May, 2022",
      eventVenue: 'Place 1',
      eventLogo: 'assets/images/sc.png',
    ),
    EventModel(
      eventId: '6',
      eventName: 'GPCA Annual Forum',
      eventDate: "17-19 May, 2022",
      eventVenue: 'Place 1',
      eventLogo: 'assets/images/sc.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    print('This is event_list_screen');

    Future<bool> showExitPopup() async {
      return await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Exit App'),
              content: const Text('Are you sure you want to exit the app?'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: const Text('No'),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: const Text('Yes'),
                ),
              ],
            ),
          ) ??
          false;
    }

    return WillPopScope(
      onWillPop: showExitPopup,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('GPCA Networking'),
          centerTitle: true,
        ),
        drawer: const AppDrawer(),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: ListView.builder(
            itemCount: _events.length,
            itemBuilder: (ctx, index) {
              return Event(
                eventId: _events[index].eventId,
                eventName: _events[index].eventName,
                eventDate: _events[index].eventDate,
                eventVenue: _events[index].eventVenue,
                eventLogo: _events[index].eventLogo,
              );
            },
          ),
        ),
      ),
    );
  }
}
