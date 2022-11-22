import 'package:flutter/material.dart';
import 'package:gpca_networking/models/exhibitor_model.dart';
import 'package:gpca_networking/models/meeting_room_partner_model.dart';

class ExhibitorProvider with ChangeNotifier {
  final List<ExhibitorModel> _exhibitors = [
    ExhibitorModel(
      id: '1',
      eventId: '1',
      contactNumber: "13123123",
      emailAddress: "ajajcandelaria@gmail.com",
      isFavorite: false,
      logo: "assets/images/sabic_logo.png",
      name: "Sabic",
      stall: "Stall A",
      numberOfFavorites: 0,
      website: "https://www.sabic.com/en",
      htmlDescription:
          """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sed felis congue, interdum nunc quis, tempor elit. Sed id dictum orci. Mauris a est ac lacus posuere euismod ut non nisi. Aliquam erat volutpat. Aliquam ultricies ex quis finibus mollis. Nullam ut elit eu metus aliquam dapibus. Nullam accumsan viverra erat, eu molestie risus ultrices sit amet. Vivamus non pharetra leo, et cursus lorem. Nunc at ante nec turpis placerat ornare eget sit amet lacus. Nam sed lectus nec risus iaculis bibendum at sit amet dui. Morbi ornare quam ut urna laoreet suscipit. Aenean condimentum consectetur mollis. Pellentesque ut augue sem. Vivamus maximus augue imperdiet augue luctus, vitae rhoncus lacus varius. Mauris posuere elit ac condimentum imperdiet. Duis pharetra pretium rhoncus. In hac habitasse platea dictumst. Nunc tincidunt erat at nibh finibus, lacinia porta libero dictum. Praesent ut luctus velit. Aliquam erat volutpat. In velit metus, ultrices vitae luctus eget, suscipit id turpis.""",
    ),
    ExhibitorModel(
      id: '2',
      eventId: '1',
      contactNumber: "3131311",
      emailAddress: "muntahat@test.com",
      isFavorite: false,
      logo: "assets/images/muntajat_logo.jpg",
      name: "Muntajat",
      stall: "Stall B",
      numberOfFavorites: 0,
      website: "www.muntajat.com",
      htmlDescription:
          """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sed felis congue, interdum nunc quis, tempor elit. Sed id dictum orci. Mauris a est ac lacus posuere euismod ut non nisi. Aliquam erat volutpat. Aliquam ultricies ex quis finibus mollis. Nullam ut elit eu metus aliquam dapibus. Nullam accumsan viverra erat, eu molestie risus ultrices sit amet. Vivamus non pharetra leo, et cursus lorem. Nunc at ante nec turpis placerat ornare eget sit amet lacus. Nam sed lectus nec risus iaculis bibendum at sit amet dui. Morbi ornare quam ut urna laoreet suscipit. Aenean condimentum consectetur mollis. Pellentesque ut augue sem. Vivamus maximus augue imperdiet augue luctus, vitae rhoncus lacus varius. Mauris posuere elit ac condimentum imperdiet. Duis pharetra pretium rhoncus. In hac habitasse platea dictumst. Nunc tincidunt erat at nibh finibus, lacinia porta libero dictum. Praesent ut luctus velit. Aliquam erat volutpat. In velit metus, ultrices vitae luctus eget, suscipit id turpis.""",
    ),
    ExhibitorModel(
      id: '3',
      eventId: '1',
      contactNumber: "222222222",
      emailAddress: "tasnee@test.com",
      isFavorite: false,
      logo: "assets/images/tasnee_logo.jpg",
      name: "Tasnee",
      stall: "Stall C",
      numberOfFavorites: 0,
      website: "www.tasnee.com",
      htmlDescription:
          """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sed felis congue, interdum nunc quis, tempor elit. Sed id dictum orci. Mauris a est ac lacus posuere euismod ut non nisi. Aliquam erat volutpat. Aliquam ultricies ex quis finibus mollis. Nullam ut elit eu metus aliquam dapibus. Nullam accumsan viverra erat, eu molestie risus ultrices sit amet. Vivamus non pharetra leo, et cursus lorem. Nunc at ante nec turpis placerat ornare eget sit amet lacus. Nam sed lectus nec risus iaculis bibendum at sit amet dui. Morbi ornare quam ut urna laoreet suscipit. Aenean condimentum consectetur mollis. Pellentesque ut augue sem. Vivamus maximus augue imperdiet augue luctus, vitae rhoncus lacus varius. Mauris posuere elit ac condimentum imperdiet. Duis pharetra pretium rhoncus. In hac habitasse platea dictumst. Nunc tincidunt erat at nibh finibus, lacinia porta libero dictum. Praesent ut luctus velit. Aliquam erat volutpat. In velit metus, ultrices vitae luctus eget, suscipit id turpis.""",
    ),
  ];

  List<ExhibitorModel> get exhibitors {
    return [..._exhibitors];
  }

  ExhibitorModel findById(String _exhibitorId, String eventId) {
    return _exhibitors.firstWhere(
      (_exhibitor) =>
          _exhibitor.id == _exhibitorId && _exhibitor.eventId == eventId,
    );
  }
}
