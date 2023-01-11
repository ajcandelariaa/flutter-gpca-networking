import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/contact_provider.dart';
import 'package:gpca_networking/providers/event_drawer_provider.dart';
import 'package:gpca_networking/screens/event/event_detail_screen.dart';
import 'package:gpca_networking/widgets/contacts/contact_tile.dart';
import 'package:gpca_networking/widgets/drawers/event/event_drawer.dart';
import 'package:gpca_networking/widgets/notifications/app_bar_notification_badge.dart';
import 'package:gpca_networking/widgets/search/search_bar.dart';
import 'package:provider/provider.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({Key? key}) : super(key: key);
  static const routeName = '/contacts';

  _onBackButtonPress(ctx) {
    Provider.of<EventDrawerProvider>(ctx, listen: false).setActivePage(1);
    Navigator.of(ctx).pushReplacementNamed(EventDetailScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final contacts = Provider.of<ContactProvider>(context).contacts;
    return WillPopScope(
      onWillPop: () => _onBackButtonPress(context),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Contacts'),
          centerTitle: true,
          actions: [
            AppBarNotificationBadge(),
          ],
        ),
        drawer: EventDrawer(),
        body: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15,
          ),
          child: Column(
            children: [
              SearchBar(),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: contacts.length,
                  itemBuilder: (context, index) {
                    return ContactTile(
                      id: contacts[index].id,
                      eventId: contacts[index].eventId,
                      contactType: contacts[index].contactType,
                      name: contacts[index].name,
                      note: contacts[index].note,
                      photo: contacts[index].photo,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
