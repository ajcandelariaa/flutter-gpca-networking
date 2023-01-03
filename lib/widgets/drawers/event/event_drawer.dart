import 'package:flutter/material.dart';
import 'package:gpca_networking/widgets/drawers/event/event_drawer_body.dart';
import 'package:gpca_networking/widgets/drawers/event/event_drawer_footer.dart';
import 'package:gpca_networking/widgets/drawers/event/event_drawer_header.dart';

class EventDrawer extends StatelessWidget {
  const EventDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: Column(
          children: [
            const EventDrawerHeader(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    EventDrawerBody(),
                    EventDrawerFooter(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
