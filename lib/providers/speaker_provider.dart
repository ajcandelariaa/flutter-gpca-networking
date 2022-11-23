import 'package:flutter/material.dart';
import 'package:gpca_networking/models/speaker_model.dart';
import 'package:gpca_networking/models/sponsor_model.dart';

class SponsorProvider with ChangeNotifier {
  final List<SpeakerModel> _speakers = [
    SpeakerModel(
      id: '1',
      eventId: '1',
      speakerCategory: "Main Conference",
      speakerType: "Moderator",
      name: "Aj Candelaria",
      designation: "CEO",
      company: "GPCA",
      emailAddress: "ajajcandelaria@gmail.com",
      contactNumber: "13123123",
      isFavorite: false,
      photoUrl: "assets/images/sample_user.jpg",
      numberOfFavorites: 0,
      htmlBio:
          """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sed felis congue, interdum nunc quis, tempor elit. Sed id dictum orci. Mauris a est ac lacus posuere euismod ut non nisi. Aliquam erat volutpat. Aliquam ultricies ex quis finibus mollis. Nullam ut elit eu metus aliquam dapibus. Nullam accumsan viverra erat, eu molestie risus ultrices sit amet. Vivamus non pharetra leo, et cursus lorem. Nunc at ante nec turpis placerat ornare eget sit amet lacus. Nam sed lectus nec risus iaculis bibendum at sit amet dui. Morbi ornare quam ut urna laoreet suscipit. Aenean condimentum consectetur mollis. Pellentesque ut augue sem. Vivamus maximus augue imperdiet augue luctus, vitae rhoncus lacus varius. Mauris posuere elit ac condimentum imperdiet. Duis pharetra pretium rhoncus. In hac habitasse platea dictumst. Nunc tincidunt erat at nibh finibus, lacinia porta libero dictum. Praesent ut luctus velit. Aliquam erat volutpat. In velit metus, ultrices vitae luctus eget, suscipit id turpis.""",
    ),
    SpeakerModel(
      id: '2',
      eventId: '1',
      speakerCategory: "GPCA Symposium",
      speakerType: "Moderator",
      name: "Aj Candelaria 2",
      designation: "CEO 2",
      company: "GPCA 2",
      emailAddress: "ajajcandelaria@gmail.com",
      contactNumber: "13123123",
      isFavorite: false,
      photoUrl: "assets/images/sample_user.jpg",
      numberOfFavorites: 0,
      htmlBio:
          """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sed felis congue, interdum nunc quis, tempor elit. Sed id dictum orci. Mauris a est ac lacus posuere euismod ut non nisi. Aliquam erat volutpat. Aliquam ultricies ex quis finibus mollis. Nullam ut elit eu metus aliquam dapibus. Nullam accumsan viverra erat, eu molestie risus ultrices sit amet. Vivamus non pharetra leo, et cursus lorem. Nunc at ante nec turpis placerat ornare eget sit amet lacus. Nam sed lectus nec risus iaculis bibendum at sit amet dui. Morbi ornare quam ut urna laoreet suscipit. Aenean condimentum consectetur mollis. Pellentesque ut augue sem. Vivamus maximus augue imperdiet augue luctus, vitae rhoncus lacus varius. Mauris posuere elit ac condimentum imperdiet. Duis pharetra pretium rhoncus. In hac habitasse platea dictumst. Nunc tincidunt erat at nibh finibus, lacinia porta libero dictum. Praesent ut luctus velit. Aliquam erat volutpat. In velit metus, ultrices vitae luctus eget, suscipit id turpis.""",
    ),
  ];

  

  List<SpeakerModel> get allSpeakers {
    return [..._speakers];
  }

  SpeakerModel findById(String speakerId, String eventId) {
    return _speakers.firstWhere(
      (speaker) => speaker.id == speakerId && speaker.eventId == eventId,
    );
  }
}
