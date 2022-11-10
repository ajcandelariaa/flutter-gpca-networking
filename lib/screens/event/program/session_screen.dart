import 'package:flutter/material.dart';
import 'package:gpca_networking/widgets/sessions_timeline_tile.dart';

class SessionsScreen extends StatelessWidget {
  const SessionsScreen({Key? key}) : super(key: key);
  static const routeName = '/sessions';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Sessions'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'TUE 06 DEC',
              ),
              Tab(
                text: 'TUE 07 DEC',
              ),
              Tab(
                text: 'TUE 08 DEC',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SessionsTimelineTile(
                      sessionStartTime: "08:30",
                      sessionEndTime: "09:30",
                      sessionTitle:
                          "Registration and networking awd awd awd awd a awdawd ",
                      sessionDescription:
                          "awdawd awd awd awd awdawdawd aw awe dad",
                      sessionIsFirst: true,
                      sessionIsLast: false,
                      sessionIndicatorXY: 0.5,
                    ),
                    SessionsTimelineTile(
                      sessionStartTime: "08:30",
                      sessionEndTime: "09:30",
                      sessionTitle: "Registration and networking",
                      sessionDescription: "",
                      sessionIsFirst: false,
                      sessionIsLast: false,
                      sessionIndicatorXY: 0.5,
                    ),
                    SessionsTimelineTile(
                      sessionStartTime: "08:30",
                      sessionEndTime: "09:30",
                      sessionTitle:
                          "Registration and networking Registration and networking Registration and networking",
                      sessionDescription: "",
                      sessionIsFirst: false,
                      sessionIsLast: false,
                      sessionIndicatorXY: 0.5,
                    ),
                    SessionsTimelineTile(
                      sessionStartTime: "08:30",
                      sessionEndTime: "09:30",
                      sessionTitle: "Registration and networking",
                      sessionDescription: "",
                      sessionIsFirst: false,
                      sessionIsLast: false,
                      sessionIndicatorXY: 0.5,
                    ),
                    SessionsTimelineTile(
                      sessionStartTime: "08:30",
                      sessionEndTime: "09:30",
                      sessionTitle:
                          "Registration and networking awd awd awd awd a awdawd ",
                      sessionDescription:
                          "awdawd awd awd awd awdawdawd aw awe dad",
                      sessionIsFirst: false,
                      sessionIsLast: true,
                      sessionIndicatorXY: 0.5,
                    ),
                  ],
                ),
              ),
            ),
            Center(),
            Center(),
          ],
        ),
      ),
    );
  }
}
