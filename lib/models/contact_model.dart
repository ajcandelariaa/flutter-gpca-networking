class ContactModel {
  final String id;
  final String eventId;
  final String contactType;
  final String name;
  final String description;
  final String emailAddress;
  final String mobileNumber;
  final String landlineNumber;
  final String photo;
  final String dateAdded;
  final String timeAdded;

  ContactModel({
    required this.id,
    required this.eventId,
    required this.contactType,
    required this.name,
    required this.description,
    required this.emailAddress,
    required this.mobileNumber,
    required this.landlineNumber,
    required this.photo,
    required this.dateAdded,
    required this.timeAdded,
  });
}
