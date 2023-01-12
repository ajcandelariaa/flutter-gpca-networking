class UserProfileModel {
  final String id;
  final String eventId;
  final String salutation, firstName, middleName, lastName;
  final String emailAddress, mobileNumber, landlineNumber;
  final String companyName, jobTitle;
  final String username, password;
  final String badgeNumber, vistorType, country;
  final String dateJoined, timeJoined;
  final String photo;

  UserProfileModel({
    required this.id,
    required this.eventId,
    required this.salutation,
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.emailAddress,
    required this.mobileNumber,
    required this.landlineNumber,
    required this.companyName,
    required this.jobTitle,
    required this.username,
    required this.password,
    required this.badgeNumber,
    required this.vistorType,
    required this.country,
    required this.dateJoined,
    required this.timeJoined,
    required this.photo,
  });
}