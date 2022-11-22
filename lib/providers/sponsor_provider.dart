import 'package:flutter/material.dart';
import 'package:gpca_networking/models/sponsor_model.dart';

class SponsorProvider with ChangeNotifier {
  final List<SponsorModel> _sponsors = [
    SponsorModel(
      id: '1',
      eventId: '1',
      sponsorType: "Tier",
      sponsorCategory: "Principal",
      contactNumber: "13123123",
      emailAddress: "ajajcandelaria@gmail.com",
      isFavorite: false,
      logo: "assets/images/sabic_logo.png",
      name: "Sabic",
      numberOfFavorites: 0,
      website: "https://www.sabic.com/en",
      htmlDescription:
          """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sed felis congue, interdum nunc quis, tempor elit. Sed id dictum orci. Mauris a est ac lacus posuere euismod ut non nisi. Aliquam erat volutpat. Aliquam ultricies ex quis finibus mollis. Nullam ut elit eu metus aliquam dapibus. Nullam accumsan viverra erat, eu molestie risus ultrices sit amet. Vivamus non pharetra leo, et cursus lorem. Nunc at ante nec turpis placerat ornare eget sit amet lacus. Nam sed lectus nec risus iaculis bibendum at sit amet dui. Morbi ornare quam ut urna laoreet suscipit. Aenean condimentum consectetur mollis. Pellentesque ut augue sem. Vivamus maximus augue imperdiet augue luctus, vitae rhoncus lacus varius. Mauris posuere elit ac condimentum imperdiet. Duis pharetra pretium rhoncus. In hac habitasse platea dictumst. Nunc tincidunt erat at nibh finibus, lacinia porta libero dictum. Praesent ut luctus velit. Aliquam erat volutpat. In velit metus, ultrices vitae luctus eget, suscipit id turpis.""",
    ),
    SponsorModel(
      id: '2',
      eventId: '2',
      sponsorType: "Tier",
      sponsorCategory: "Diamond",
      contactNumber: "3131311",
      emailAddress: "muntahat@test.com",
      isFavorite: false,
      logo: "assets/images/muntajat_logo.jpg",
      name: "Muntajat",
      numberOfFavorites: 0,
      website: "www.muntajat.com",
      htmlDescription:
          """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sed felis congue, interdum nunc quis, tempor elit. Sed id dictum orci. Mauris a est ac lacus posuere euismod ut non nisi. Aliquam erat volutpat. Aliquam ultricies ex quis finibus mollis. Nullam ut elit eu metus aliquam dapibus. Nullam accumsan viverra erat, eu molestie risus ultrices sit amet. Vivamus non pharetra leo, et cursus lorem. Nunc at ante nec turpis placerat ornare eget sit amet lacus. Nam sed lectus nec risus iaculis bibendum at sit amet dui. Morbi ornare quam ut urna laoreet suscipit. Aenean condimentum consectetur mollis. Pellentesque ut augue sem. Vivamus maximus augue imperdiet augue luctus, vitae rhoncus lacus varius. Mauris posuere elit ac condimentum imperdiet. Duis pharetra pretium rhoncus. In hac habitasse platea dictumst. Nunc tincidunt erat at nibh finibus, lacinia porta libero dictum. Praesent ut luctus velit. Aliquam erat volutpat. In velit metus, ultrices vitae luctus eget, suscipit id turpis.""",
    ),
    SponsorModel(
      id: '3',
      eventId: '2',
      sponsorType: "Tier",
      sponsorCategory: "Diamond",
      contactNumber: "222222222",
      emailAddress: "tasnee@test.com",
      isFavorite: false,
      logo: "assets/images/tasnee_logo.jpg",
      name: "Tasnee",
      numberOfFavorites: 0,
      website: "www.tasnee.com",
      htmlDescription:
          """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sed felis congue, interdum nunc quis, tempor elit. Sed id dictum orci. Mauris a est ac lacus posuere euismod ut non nisi. Aliquam erat volutpat. Aliquam ultricies ex quis finibus mollis. Nullam ut elit eu metus aliquam dapibus. Nullam accumsan viverra erat, eu molestie risus ultrices sit amet. Vivamus non pharetra leo, et cursus lorem. Nunc at ante nec turpis placerat ornare eget sit amet lacus. Nam sed lectus nec risus iaculis bibendum at sit amet dui. Morbi ornare quam ut urna laoreet suscipit. Aenean condimentum consectetur mollis. Pellentesque ut augue sem. Vivamus maximus augue imperdiet augue luctus, vitae rhoncus lacus varius. Mauris posuere elit ac condimentum imperdiet. Duis pharetra pretium rhoncus. In hac habitasse platea dictumst. Nunc tincidunt erat at nibh finibus, lacinia porta libero dictum. Praesent ut luctus velit. Aliquam erat volutpat. In velit metus, ultrices vitae luctus eget, suscipit id turpis.""",
    ),
    SponsorModel(
      id: '4',
      eventId: '2',
      sponsorType: "Tier",
      sponsorCategory: "Diamond",
      contactNumber: "222222222",
      emailAddress: "tasnee@test.com",
      isFavorite: false,
      logo: "assets/images/tasnee_logo.jpg",
      name: "Tasnee",
      numberOfFavorites: 0,
      website: "www.tasnee.com",
      htmlDescription:
          """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sed felis congue, interdum nunc quis, tempor elit. Sed id dictum orci. Mauris a est ac lacus posuere euismod ut non nisi. Aliquam erat volutpat. Aliquam ultricies ex quis finibus mollis. Nullam ut elit eu metus aliquam dapibus. Nullam accumsan viverra erat, eu molestie risus ultrices sit amet. Vivamus non pharetra leo, et cursus lorem. Nunc at ante nec turpis placerat ornare eget sit amet lacus. Nam sed lectus nec risus iaculis bibendum at sit amet dui. Morbi ornare quam ut urna laoreet suscipit. Aenean condimentum consectetur mollis. Pellentesque ut augue sem. Vivamus maximus augue imperdiet augue luctus, vitae rhoncus lacus varius. Mauris posuere elit ac condimentum imperdiet. Duis pharetra pretium rhoncus. In hac habitasse platea dictumst. Nunc tincidunt erat at nibh finibus, lacinia porta libero dictum. Praesent ut luctus velit. Aliquam erat volutpat. In velit metus, ultrices vitae luctus eget, suscipit id turpis.""",
    ),
    SponsorModel(
      id: '5',
      eventId: '2',
      sponsorType: "Tier",
      sponsorCategory: "Platinum",
      contactNumber: "222222222",
      emailAddress: "tasnee@test.com",
      isFavorite: false,
      logo: "assets/images/tasnee_logo.jpg",
      name: "Tasnee",
      numberOfFavorites: 0,
      website: "www.tasnee.com",
      htmlDescription:
          """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sed felis congue, interdum nunc quis, tempor elit. Sed id dictum orci. Mauris a est ac lacus posuere euismod ut non nisi. Aliquam erat volutpat. Aliquam ultricies ex quis finibus mollis. Nullam ut elit eu metus aliquam dapibus. Nullam accumsan viverra erat, eu molestie risus ultrices sit amet. Vivamus non pharetra leo, et cursus lorem. Nunc at ante nec turpis placerat ornare eget sit amet lacus. Nam sed lectus nec risus iaculis bibendum at sit amet dui. Morbi ornare quam ut urna laoreet suscipit. Aenean condimentum consectetur mollis. Pellentesque ut augue sem. Vivamus maximus augue imperdiet augue luctus, vitae rhoncus lacus varius. Mauris posuere elit ac condimentum imperdiet. Duis pharetra pretium rhoncus. In hac habitasse platea dictumst. Nunc tincidunt erat at nibh finibus, lacinia porta libero dictum. Praesent ut luctus velit. Aliquam erat volutpat. In velit metus, ultrices vitae luctus eget, suscipit id turpis.""",
    ),
    SponsorModel(
      id: '6',
      eventId: '2',
      sponsorType: "Tier",
      sponsorCategory: "Gold",
      contactNumber: "222222222",
      emailAddress: "tasnee@test.com",
      isFavorite: false,
      logo: "assets/images/tasnee_logo.jpg",
      name: "Tasnee",
      numberOfFavorites: 0,
      website: "www.tasnee.com",
      htmlDescription:
          """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sed felis congue, interdum nunc quis, tempor elit. Sed id dictum orci. Mauris a est ac lacus posuere euismod ut non nisi. Aliquam erat volutpat. Aliquam ultricies ex quis finibus mollis. Nullam ut elit eu metus aliquam dapibus. Nullam accumsan viverra erat, eu molestie risus ultrices sit amet. Vivamus non pharetra leo, et cursus lorem. Nunc at ante nec turpis placerat ornare eget sit amet lacus. Nam sed lectus nec risus iaculis bibendum at sit amet dui. Morbi ornare quam ut urna laoreet suscipit. Aenean condimentum consectetur mollis. Pellentesque ut augue sem. Vivamus maximus augue imperdiet augue luctus, vitae rhoncus lacus varius. Mauris posuere elit ac condimentum imperdiet. Duis pharetra pretium rhoncus. In hac habitasse platea dictumst. Nunc tincidunt erat at nibh finibus, lacinia porta libero dictum. Praesent ut luctus velit. Aliquam erat volutpat. In velit metus, ultrices vitae luctus eget, suscipit id turpis.""",
    ),
    SponsorModel(
      id: '7',
      eventId: '2',
      sponsorType: "Associate",
      sponsorCategory: "Event guide and pocket programme",
      contactNumber: "222222222",
      emailAddress: "tasnee@test.com",
      isFavorite: false,
      logo: "assets/images/tasnee_logo.jpg",
      name: "Tasnee",
      numberOfFavorites: 0,
      website: "www.tasnee.com",
      htmlDescription:
          """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sed felis congue, interdum nunc quis, tempor elit. Sed id dictum orci. Mauris a est ac lacus posuere euismod ut non nisi. Aliquam erat volutpat. Aliquam ultricies ex quis finibus mollis. Nullam ut elit eu metus aliquam dapibus. Nullam accumsan viverra erat, eu molestie risus ultrices sit amet. Vivamus non pharetra leo, et cursus lorem. Nunc at ante nec turpis placerat ornare eget sit amet lacus. Nam sed lectus nec risus iaculis bibendum at sit amet dui. Morbi ornare quam ut urna laoreet suscipit. Aenean condimentum consectetur mollis. Pellentesque ut augue sem. Vivamus maximus augue imperdiet augue luctus, vitae rhoncus lacus varius. Mauris posuere elit ac condimentum imperdiet. Duis pharetra pretium rhoncus. In hac habitasse platea dictumst. Nunc tincidunt erat at nibh finibus, lacinia porta libero dictum. Praesent ut luctus velit. Aliquam erat volutpat. In velit metus, ultrices vitae luctus eget, suscipit id turpis.""",
    ),
    SponsorModel(
      id: '8',
      eventId: '2',
      sponsorType: "GPCA Youth Forum",
      sponsorCategory: "Partner",
      contactNumber: "222222222",
      emailAddress: "tasnee@test.com",
      isFavorite: false,
      logo: "assets/images/tasnee_logo.jpg",
      name: "Tasnee",
      numberOfFavorites: 0,
      website: "www.tasnee.com",
      htmlDescription:
          """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sed felis congue, interdum nunc quis, tempor elit. Sed id dictum orci. Mauris a est ac lacus posuere euismod ut non nisi. Aliquam erat volutpat. Aliquam ultricies ex quis finibus mollis. Nullam ut elit eu metus aliquam dapibus. Nullam accumsan viverra erat, eu molestie risus ultrices sit amet. Vivamus non pharetra leo, et cursus lorem. Nunc at ante nec turpis placerat ornare eget sit amet lacus. Nam sed lectus nec risus iaculis bibendum at sit amet dui. Morbi ornare quam ut urna laoreet suscipit. Aenean condimentum consectetur mollis. Pellentesque ut augue sem. Vivamus maximus augue imperdiet augue luctus, vitae rhoncus lacus varius. Mauris posuere elit ac condimentum imperdiet. Duis pharetra pretium rhoncus. In hac habitasse platea dictumst. Nunc tincidunt erat at nibh finibus, lacinia porta libero dictum. Praesent ut luctus velit. Aliquam erat volutpat. In velit metus, ultrices vitae luctus eget, suscipit id turpis.""",
    ),
    SponsorModel(
      id: '9',
      eventId: '2',
      sponsorType: "GPCA Symposium",
      sponsorCategory: "Principal",
      contactNumber: "222222222",
      emailAddress: "tasnee@test.com",
      isFavorite: false,
      logo: "assets/images/tasnee_logo.jpg",
      name: "Tasnee",
      numberOfFavorites: 0,
      website: "www.tasnee.com",
      htmlDescription:
          """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sed felis congue, interdum nunc quis, tempor elit. Sed id dictum orci. Mauris a est ac lacus posuere euismod ut non nisi. Aliquam erat volutpat. Aliquam ultricies ex quis finibus mollis. Nullam ut elit eu metus aliquam dapibus. Nullam accumsan viverra erat, eu molestie risus ultrices sit amet. Vivamus non pharetra leo, et cursus lorem. Nunc at ante nec turpis placerat ornare eget sit amet lacus. Nam sed lectus nec risus iaculis bibendum at sit amet dui. Morbi ornare quam ut urna laoreet suscipit. Aenean condimentum consectetur mollis. Pellentesque ut augue sem. Vivamus maximus augue imperdiet augue luctus, vitae rhoncus lacus varius. Mauris posuere elit ac condimentum imperdiet. Duis pharetra pretium rhoncus. In hac habitasse platea dictumst. Nunc tincidunt erat at nibh finibus, lacinia porta libero dictum. Praesent ut luctus velit. Aliquam erat volutpat. In velit metus, ultrices vitae luctus eget, suscipit id turpis.""",
    ),
    SponsorModel(
      id: '10',
      eventId: '2',
      sponsorType: "GPCA Youth Forum",
      sponsorCategory: "Principal",
      contactNumber: "222222222",
      emailAddress: "tasnee@test.com",
      isFavorite: false,
      logo: "assets/images/muntajat_logo.jpg",
      name: "Muntajat",
      numberOfFavorites: 0,
      website: "www.muntajat.com",
      htmlDescription:
          """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sed felis congue, interdum nunc quis, tempor elit. Sed id dictum orci. Mauris a est ac lacus posuere euismod ut non nisi. Aliquam erat volutpat. Aliquam ultricies ex quis finibus mollis. Nullam ut elit eu metus aliquam dapibus. Nullam accumsan viverra erat, eu molestie risus ultrices sit amet. Vivamus non pharetra leo, et cursus lorem. Nunc at ante nec turpis placerat ornare eget sit amet lacus. Nam sed lectus nec risus iaculis bibendum at sit amet dui. Morbi ornare quam ut urna laoreet suscipit. Aenean condimentum consectetur mollis. Pellentesque ut augue sem. Vivamus maximus augue imperdiet augue luctus, vitae rhoncus lacus varius. Mauris posuere elit ac condimentum imperdiet. Duis pharetra pretium rhoncus. In hac habitasse platea dictumst. Nunc tincidunt erat at nibh finibus, lacinia porta libero dictum. Praesent ut luctus velit. Aliquam erat volutpat. In velit metus, ultrices vitae luctus eget, suscipit id turpis.""",
    ),
  ];

  List<SponsorModel> get allSponsors {
    return [..._sponsors];
  }

  List<String> get tierSponsorsCategory {
    final tierList = _sponsors
        .where(
          (sponsor) => sponsor.sponsorType == "Tier",
        )
        .toList();

    var sCat = <String>{};
    tierList.where((category) => sCat.add(category.sponsorCategory)).toList();

    return sCat.toList();
  }

  List<SponsorModel> tierSponsorsCategorized(String category) {
    return _sponsors
        .where(
          (sponsor) =>
              sponsor.sponsorType == "Tier" &&
              sponsor.sponsorCategory == category,
        )
        .toList();
  }

  List<SponsorModel> get associateSponsors {
    return _sponsors
        .where(
          (sponsor) => sponsor.sponsorType == "Associate",
        )
        .toList();
  }

  List<String> get featuredSponsorsType {
    final featuredList = _sponsors
        .where(
          (sponsor) =>
              sponsor.sponsorType != "Tier" &&
              sponsor.sponsorType != "Associate",
        )
        .toList();

    var sCat = <String>{};
    featuredList.where((type) => sCat.add(type.sponsorType)).toList();

    return sCat.toList();
  }

  List<SponsorModel> featuredSponsorsCategorizedbyType(String type) {
    return _sponsors
        .where(
          (sponsor) =>
              sponsor.sponsorType == type,
        )
        .toList();
  }

  SponsorModel findById(String sponsorId, String eventId) {
    return _sponsors.firstWhere(
      (sponsor) => sponsor.id == sponsorId && sponsor.eventId == eventId,
    );
  }
}
