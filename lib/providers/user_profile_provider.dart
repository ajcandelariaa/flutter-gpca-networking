import 'package:flutter/material.dart';
import 'package:gpca_networking/models/user_profile_model.dart';

class UserProfileProvider with ChangeNotifier {
  final UserProfileModel _user = UserProfileModel(
    id: "1",
    eventId: "1",
    salutation: "N/A",
    firstName: "Albert Joseph",
    middleName: "Malda",
    lastName: "Candelaria",
    emailAddress: "aj@gpca.org.ae",
    mobileNumber: "+971568309165",
    landlineNumber: "N/A",
    companyName: "GPCA",
    jobTitle: "IT Intern",
    username: "ajcandelariaa",
    password: "********",
    badgeNumber: "BADGE123",
    vistorType: "Pre-reg",
    country: "UAE",
    dateJoined: "January 12, 2023",
    timeJoined: "11:28 A.M.",
    photo: "assets/images/sample_user.jpeg",
  );

  UserProfileModel getProfile({required String id, required String eventId}) {
    return _user;
  }
}
