import 'package:flutter/material.dart';
import 'package:gpca_networking/models/contact_model.dart';

class ContactProvider with ChangeNotifier {
  final List<ContactModel> _contacts = [
    ContactModel(
      id: "1",
      eventId: "1",
      contactType: "Speaker",
      name: "Aj Candelaria",
      description: "CEO, GPCA",
      emailAddress: "aj@gpca.org.ae",
      mobileNumber: "+971568309165",
      landlineNumber: "N/A",
      photo: "assets/images/sample_user.jpeg",
      dateAdded: "January 20, 2022",
      timeAdded: "10:20 P.M."
    ),
    ContactModel(
      id: "2",
      eventId: "1",
      contactType: "Sponsor",
      name: "Sabic",
      description: "www.sabic.com",
      emailAddress: "N/A",
      mobileNumber: "N/A",
      landlineNumber: "N/A",
      photo: "assets/images/sabic_logo.png",
      dateAdded: "January 20, 2022",
      timeAdded: "10:20 P.M."
    ),
    ContactModel(
      id: "3",
      eventId: "1",
      contactType: "Exhibitor",
      name: "Tasnee",
      description: "www.tasnee.com",
      emailAddress: "N/A",
      mobileNumber: "N/A",
      landlineNumber: "N/A",
      photo: "assets/images/tasnee_logo.jpg",
      dateAdded: "January 20, 2022",
      timeAdded: "10:20 P.M."
    ),
  ];

  List<ContactModel> get contacts {
    return [..._contacts];
  }

  ContactModel findById(String contactId, String eventId) {
    return _contacts.firstWhere(
        (contact) => contact.id == contactId && contact.eventId == eventId);
  }
}
