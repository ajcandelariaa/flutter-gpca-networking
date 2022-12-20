import 'package:flutter/cupertino.dart';
import 'package:gpca_networking/models/program_model.dart';

class ProgramProvider with ChangeNotifier {
  final List<ProgramModel> _programs = [
    ProgramModel(
      id: "1",
      eventId: "1",
      date: "December 06 - 08, 2022",
      name: "Annual GPCA Forum",
      backgroundPicture: "assets/images/sample_agenda_banner.PNG",
    ),
    ProgramModel(
      id: "2",
      eventId: "1",
      date: "December 06 - 08, 2022",
      name: "GPCA Youth Forum",
      backgroundPicture: "assets/images/sample_agenda_banner.PNG",
    ),
    ProgramModel(
      id: "3",
      eventId: "1",
      date: "December 06 - 08, 2022",
      name: "GPCA Symposium",
      backgroundPicture: "assets/images/sample_agenda_banner.PNG",
    ),
  ];

  List<ProgramModel> getPrograms(String eventId) {
    return _programs.where((program) => program.eventId == eventId).toList();
  }
}
