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

  @override
  Widget build(BuildContext context) {
    print('This is event_list_screen');
    final eventsData = Provider.of<EventProvider>(context, listen: false).events;
    
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
          margin: const EdgeInsets.all(10),
          child: ListView.builder(
            itemCount: eventsData.length,
            itemBuilder: (ctx, index) {
              return Event(
                eventId: eventsData[index].id,
                eventName: eventsData[index].name,
                eventDate: eventsData[index].date,
                eventVenue: eventsData[index].venue,
                eventLogo: eventsData[index].logo,
              );
            },
          ),
        ),
      ),
    );
  }
}
