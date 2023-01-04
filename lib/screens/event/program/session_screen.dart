import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/program_session_date_provider.dart';
import 'package:gpca_networking/widgets/programs/program_session_date_container.dart';
import 'package:provider/provider.dart';

class SessionsScreen extends StatelessWidget {
  const SessionsScreen({Key? key}) : super(key: key);
  static const routeName = '/sessions';

  @override
  Widget build(BuildContext context) {
    final programId = ModalRoute.of(context)!.settings.arguments;
    final programSessionDates = Provider.of<ProgramSessionDateProvider>(context)
        .getProgramDates(programId.toString());
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Sessions'),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              for (var programSessionDate in programSessionDates)
                Tab(
                  text: programSessionDate.date,
                ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            for (var programSessionDate in programSessionDates)
              ProgramSessionDateContainer(
                programSessionDateId: programSessionDate.id,
              ),
          ],
        ),
      ),
    );
  }
}
