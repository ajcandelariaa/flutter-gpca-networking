class MeetingRoomPartnerModel {
  final String id;
  final String eventId;
  final String name;
  final String website;
  final String emailAddress;
  final String contactNumber;
  final String htmlDescription;
  final String hall;
  final int numberOfFavorites;
  final String logo;
  final bool isFavorite;

  MeetingRoomPartnerModel({
    required this.id,
    required this.eventId,
    required this.name,
    required this.website,
    required this.emailAddress,
    required this.contactNumber,
    required this.htmlDescription,
    required this.hall,
    required this.numberOfFavorites,
    required this.logo,
    required this.isFavorite,
  });
}
