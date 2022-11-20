class ExhibitorModel {
  final String id;
  final String eventId;
  final String name;
  final String website;
  final String emailAddress;
  final String contactNumber;
  final String htmlDescription;
  final String stall;
  final int numberOfFavorites;
  final String logo;
  final bool isFavorite;

  ExhibitorModel({
    required this.id,
    required this.eventId,
    required this.name,
    required this.website,
    required this.emailAddress,
    required this.contactNumber,
    required this.htmlDescription,
    required this.stall,
    required this.numberOfFavorites,
    required this.logo,
    required this.isFavorite,
  });
}
