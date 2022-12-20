class ProgramSessionModel {
  final String id;
  final String programSessionDateId;
  final bool sessionIsFirst;
  final bool sessionIsLast;
  final String title;
  final String htmlDescription;
  final String startTime;
  final String endTime;
  final String date;
  final List<ProgramSessionSponsorModel> sponsors;
  final List<ProgramSessionSpeakerModel> speakers;

  ProgramSessionModel({
    required this.id,
    required this.programSessionDateId,
    required this.sessionIsFirst,
    required this.sessionIsLast,
    required this.title,
    required this.htmlDescription,
    required this.startTime,
    required this.endTime,
    required this.date,
    required this.sponsors,
    required this.speakers,
  });
}

class ProgramSessionSpeakerModel {
  final String id;
  final String name;
  final String designation;
  final String company;
  final String speakerCategory;
  final String photo;

  ProgramSessionSpeakerModel({
    required this.id,
    required this.name,
    required this.designation,
    required this.speakerCategory,
    required this.company,
    required this.photo,
  });
}

class ProgramSessionSponsorModel {
  final String id;
  final String name;
  final String photo;
  final String sponsorType;

  
  ProgramSessionSponsorModel({
    required this.id,
    required this.name,
    required this.photo,
    required this.sponsorType,
  });
}