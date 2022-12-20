import 'package:flutter/cupertino.dart';
import 'package:gpca_networking/models/program_session_model.dart';

class ProgramSessionProvider with ChangeNotifier {
  final List<ProgramSessionModel> _programSessions = [
    ProgramSessionModel(
      id: "1",
      programSessionDateId: "1",
      sessionIsFirst: true,
      sessionIsLast: false,
      title: "Registration, welcome coffee and networking",
      htmlDescription: """ """,
      startTime: "08:30",
      endTime: "08:50",
      date: "December 06, 2022 | Tuesday | Day 1",
      sponsors: [
        ProgramSessionSponsorModel(
          id: "1",
          name: "Sabic",
          photo: "assets/images/sabic_logo.png",
          sponsorType: "Principal",
        ),
      ],
      speakers: [],
    ),
    ProgramSessionModel(
      id: "2",
      programSessionDateId: "1",
      sessionIsFirst: false,
      sessionIsLast: false,
      title: "Welcome Remarks",
      htmlDescription: """ """,
      startTime: "08:50",
      endTime: "09:30",
      date: "December 06, 2022 | Tuesday | Day 1",
      sponsors: [
        ProgramSessionSponsorModel(
          id: "1",
          name: "Sabic",
          photo: "assets/images/sabic_logo.png",
          sponsorType: "Principal",
        ),
      ],
      speakers: [],
    ),
    ProgramSessionModel(
      id: "3",
      programSessionDateId: "1",
      sessionIsFirst: false,
      sessionIsLast: true,
      title:
          "Leadership dialogue 1: Clean energy transition – The GCC’s opportunity towards world leadership",
      htmlDescription: """<ul>
              <li>The green transition – a burden or a new engine for the regional industry’s sustainable growth?</li>
              <li>What would it take to decarbonise aggressively and achieve the 1.5°C climate-change goal?</li>
              <li>Clean hydrogen: is it the promising alternative to decarbonize the industry?</li>
              <li>Funding option and how the numbers stack up – What are the costs and the investments required for decarbonisation?</li>
              <li>An overview of the GCC H2 projects</li>
              </ul>""",
      startTime: "10:00",
      endTime: "10:10",
      date: "December 06, 2022 | Tuesday | Day 1",
      sponsors: [],
      speakers: [
        ProgramSessionSpeakerModel(
          id: "1",
          name: "Aj Candelaria",
          designation: "IT Intern",
          company: "GPCA",
          speakerCategory: "Teaser presentation & moderation",
          photo: "assets/images/sample_user.jpeg",
        ),
        ProgramSessionSpeakerModel(
          id: "2",
          name: "H.E. Dr. Mohamed Bin Mubarak Bin Daina",
          designation:
              "Minister of Oil & Environment, Special Envoy for Climate Affairs,",
          company: "Qatar",
          speakerCategory: "Panellists:",
          photo: "assets/images/sample_user.jpeg",
        ),
      ],
    ),
    ProgramSessionModel(
      id: "4",
      programSessionDateId: "2",
      sessionIsFirst: true,
      sessionIsLast: false,
      title: "Registration, welcome coffee and networking",
      htmlDescription: """ """,
      startTime: "08:30",
      endTime: "onwards",
      date: "December 07, 2022 | Wednesday | Day 2",
      sponsors: [
        ProgramSessionSponsorModel(
          id: "1",
          name: "Sabic",
          photo: "assets/images/sabic_logo.png",
          sponsorType: "Principal",
        ),
      ],
      speakers: [],
    ),
    ProgramSessionModel(
      id: "5",
      sessionIsFirst: false,
      sessionIsLast: true,
      programSessionDateId: "2",
      title:
          "Leadership dialogue 1: Clean energy transition – The GCC’s opportunity towards world leadership",
      htmlDescription: """<ul>
              <li>The green transition – a burden or a new engine for the regional industry’s sustainable growth?</li>
              <li>What would it take to decarbonise aggressively and achieve the 1.5°C climate-change goal?</li>
              <li>Clean hydrogen: is it the promising alternative to decarbonize the industry?</li>
              <li>Funding option and how the numbers stack up – What are the costs and the investments required for decarbonisation?</li>
              <li>An overview of the GCC H2 projects</li>
              </ul>""",
      startTime: "10:00",
      endTime: "10:10",
      date: "December 07, 2022 | Wednesday | Day 2",
      sponsors: [],
      speakers: [
        ProgramSessionSpeakerModel(
          id: "1",
          name: "Aj Candelaria",
          designation: "IT Intern",
          company: "GPCA",
          speakerCategory: "Teaser presentation & moderation",
          photo: "assets/images/sample_user.jpeg",
        ),
        ProgramSessionSpeakerModel(
          id: "2",
          name: "H.E. Dr. Mohamed Bin Mubarak Bin Daina",
          designation:
              "Minister of Oil & Environment, Special Envoy for Climate Affairs,",
          company: "Qatar",
          speakerCategory: "Panellists:",
          photo: "assets/images/sample_user.jpeg",
        ),
      ],
    ),
    ProgramSessionModel(
      id: "6",
      programSessionDateId: "3",
      sessionIsFirst: true,
      sessionIsLast: false,
      title: "Registration, welcome coffee and networking",
      htmlDescription: """ """,
      startTime: "08:30",
      endTime: "onwards",
      date: "December 08, 2022 | Thursday | Day 3",
      sponsors: [
        ProgramSessionSponsorModel(
          id: "1",
          name: "Sabic",
          photo: "assets/images/sabic_logo.png",
          sponsorType: "Principal",
        ),
      ],
      speakers: [],
    ),
    ProgramSessionModel(
      id: "7",
      programSessionDateId: "3",
      sessionIsFirst: false,
      sessionIsLast: true,
      title:
          "Leadership dialogue 6: Clean energy transition – The GCC’s opportunity towards world leadership",
      htmlDescription: """<ul>
              <li>The green transition – a burden or a new engine for the regional industry’s sustainable growth?</li>
              <li>What would it take to decarbonise aggressively and achieve the 1.5°C climate-change goal?</li>
              <li>Clean hydrogen: is it the promising alternative to decarbonize the industry?</li>
              <li>Funding option and how the numbers stack up – What are the costs and the investments required for decarbonisation?</li>
              <li>An overview of the GCC H2 projects</li>
              </ul>""",
      startTime: "10:00",
      endTime: "10:10",
      date: "December 08, 2022 | Thursday | Day 3",
      sponsors: [],
      speakers: [
        ProgramSessionSpeakerModel(
          id: "1",
          name: "Aj Candelaria",
          designation: "IT Intern",
          company: "GPCA",
          speakerCategory: "Teaser presentation & moderation",
          photo: "assets/images/sample_user.jpeg",
        ),
        ProgramSessionSpeakerModel(
          id: "2",
          name: "H.E. Dr. Mohamed Bin Mubarak Bin Daina",
          designation:
              "Minister of Oil & Environment, Special Envoy for Climate Affairs,",
          company: "Qatar",
          speakerCategory: "Panellists:",
          photo: "assets/images/sample_user.jpeg",
        ),
      ],
    ),
  ];

  List<ProgramSessionModel> getProgramSessions(String programSessionDateId){
    return _programSessions.where((programSession) => programSession.programSessionDateId == programSessionDateId).toList();
  }
}
