import 'package:flutter/cupertino.dart';
import 'package:gpca_networking/models/program_session_date_model.dart';

class ProgramSessionDateProvider with ChangeNotifier {
  final List<ProgramSessionDateModel> _programSessionDates = [
    ProgramSessionDateModel(
      id: "1",
      programId: "1",
      date: "TUE 06 DEC",
    ),
    ProgramSessionDateModel(
      id: "2",
      programId: "1",
      date: "WED 07 DEC",
    ),
    ProgramSessionDateModel(
      id: "3",
      programId: "1",
      date: "THU 08 DEC",
    ),
    ProgramSessionDateModel(
      id: "4",
      programId: "2",
      date: "TUE 06 OCT",
    ),
    ProgramSessionDateModel(
      id: "5",
      programId: "2",
      date: "WED 07 OCT",
    ),
    ProgramSessionDateModel(
      id: "6",
      programId: "2",
      date: "THU 08 OCT",
    ),
    ProgramSessionDateModel(
      id: "7",
      programId: "3",
      date: "TUE 06 JAN",
    ),
    ProgramSessionDateModel(
      id: "8",
      programId: "3",
      date: "WED 07 JAN",
    ),
    ProgramSessionDateModel(
      id: "9",
      programId: "3",
      date: "THU 08 JAN",
    ),
  ];

  List<ProgramSessionDateModel> getProgramDates (String programId) {
    return _programSessionDates.where((programSessionDate) => programSessionDate.programId == programId).toList();
  }
  
}
