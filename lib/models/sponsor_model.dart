class SponsorModel {
  final String id;
  final String eventId;
  final String sponsorType;
  final String sponsorCategory;
  final String name;
  final String website;
  final String emailAddress;
  final String contactNumber;
  final String htmlDescription;
  final int numberOfFavorites;
  final String logo;
  final bool isFavorite;

  SponsorModel({
    required this.id,
    required this.eventId,
    required this.name,
    required this.sponsorType,
    required this.sponsorCategory,
    required this.website,
    required this.emailAddress,
    required this.contactNumber,
    required this.htmlDescription,
    required this.numberOfFavorites,
    required this.logo,
    required this.isFavorite,
  });
}
