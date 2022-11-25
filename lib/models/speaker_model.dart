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
  });
}
