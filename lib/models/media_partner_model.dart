class MediaPartnerModel {
  final String id;
  final String name;
  final String website;
  final String emailAddress;
  final String contactNumber;
  final int numberOfFavorites;
  final String logo;
  final bool isFavorite;

  MediaPartnerModel({
    required this.id,
    required this.name,
    required this.website,
    required this.emailAddress,
    required this.contactNumber,
    required this.numberOfFavorites,
    required this.logo,
    required this.isFavorite,
  });
}
