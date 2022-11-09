import 'package:flutter/material.dart';
import 'package:gpca_networking/widgets/program_timeline_tile.dart';

class ProgramDetailScreen extends StatelessWidget {
  const ProgramDetailScreen({Key? key}) : super(key: key);
  static const routeName = '/program-detail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Program Detail'),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: Column(
          children: [
            ProgramTimelineTile(
              sessionStartTime: "08:30",
              sessionEndTime: "09:30",
              sessionTitle: "Registration and networking awd awd awd awd a awdawd ",
              sessionDescription: "awdawd awd awd awd awdawdawd aw awe dad",
              sessionIsFirst: true,
              sessionIsLast: false,
              sessionIndicatorXY: 0.5,
            ),
            ProgramTimelineTile(
              sessionStartTime: "08:30",
              sessionEndTime: "09:30",
              sessionTitle: "Registration and networking",
              sessionDescription: "",
              sessionIsFirst: false,
              sessionIsLast: false,
              sessionIndicatorXY: 0.5,
            ),
            ProgramTimelineTile(
              sessionStartTime: "08:30",
              sessionEndTime: "09:30",
              sessionTitle: "Registration and networking Registration and networking Registration and networking",
              sessionDescription: "",
              sessionIsFirst: false,
              sessionIsLast: false,
              sessionIndicatorXY: 0.5,
            ),
            ProgramTimelineTile(
              sessionStartTime: "08:30",
              sessionEndTime: "09:30",
              sessionTitle: "Registration and networking",
              sessionDescription: "",
              sessionIsFirst: false,
              sessionIsLast: false,
              sessionIndicatorXY: 0.5,
            ),
            ProgramTimelineTile(
              sessionStartTime: "08:30",
              sessionEndTime: "09:30",
              sessionTitle: "Registration and networking awd awd awd awd a awdawd ",
              sessionDescription: "awdawd awd awd awd awdawdawd aw awe dad",
              sessionIsFirst: false,
              sessionIsLast: true,
              sessionIndicatorXY: 0.5,
            ),
          ],
        ),
      ),
    );
  }
}
