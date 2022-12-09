class SpeakerModel {
  final String id;
  final String eventId;
  final String speakerCategory;
  final String speakerType;
  final String name;
  final String designation;
  final String company;
  final String emailAddress;
  final String contactNumber;
  final String htmlBio;
  final int numberOfFavorites;
  final String photo;
  final bool isFavorite;
  final String sideColor;
  final List<SpeakerSessionModel> session;

  SpeakerModel({
    required this.id,
    required this.eventId,
    required this.speakerCategory,
    required this.speakerType,
    required this.name,
    required this.designation,
    required this.company,
    required this.emailAddress,
    required this.contactNumber,
    required this.htmlBio,
    required this.numberOfFavorites,
    required this.photo,
    required this.isFavorite,
    required this.sideColor,
    required this.session,
  });
}

class SpeakerSessionModel{
  final String id;
  final String title;
  final String time;
  final String date;

  SpeakerSessionModel({
    required this.id,
    required this.title,
    required this.time,
    required this.date,
  });
}