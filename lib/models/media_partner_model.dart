class MediaPartnerModel {
  final String id;
  final String eventId;
  final String name;
  final String website;
  final String emailAddress;
  final String contactNumber;
  final String htmlDescription;
  final int numberOfFavorites;
  final String logo;
  final bool isFavorite;

  MediaPartnerModel({
    required this.id,
    required this.eventId,
    required this.name,
    required this.website,
    required this.emailAddress,
    required this.contactNumber,
    required this.htmlDescription,
    required this.numberOfFavorites,
    required this.logo,
    required this.isFavorite,
  });
}
