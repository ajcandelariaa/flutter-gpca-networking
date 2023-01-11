class ContactModel {
  final String id;
  final String baseId;
  final String eventId;
  final bool isActive;
  final String contactType;
  final String name;
  final String note;
  final String emailAddress;
  final String mobileNumber;
  final String landlineNumber;
  final String photo;
  final String dateAdded;
  final String timeAdded;

  ContactModel({
    required this.id,
    required this.baseId,
    required this.eventId,
    required this.isActive,
    required this.contactType,
    required this.name,
    required this.note,
    required this.emailAddress,
    required this.mobileNumber,
    required this.landlineNumber,
    required this.photo,
    required this.dateAdded,
    required this.timeAdded,
  });
}
