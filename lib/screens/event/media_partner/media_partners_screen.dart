import 'package:flutter/material.dart';
import 'package:gpca_networking/models/media_partner_model.dart';
import 'package:gpca_networking/widgets/media_partner_tile.dart';
import 'package:gpca_networking/widgets/search_bar.dart';

class MediaPartnersScreen extends StatelessWidget {
  MediaPartnersScreen({Key? key}) : super(key: key);
  static const routeName = '/media-partners';

  final List<MediaPartnerModel> _mediaPartners = [
      MediaPartnerModel(
        id: '1',
        contactNumber: "13123123",
        emailAddress: "sabic@test.com",
        isFavorite: false,
        logo: "assets/images/sabic_logo.png",
        name: "Sabic",
        numberOfFavorites: 0,
        website: "www.sabic.com",
      ),
      MediaPartnerModel(
        id: '2',
        contactNumber: "3131311",
        emailAddress: "muntahat@test.com",
        isFavorite: false,
        logo: "assets/images/muntajat_logo.jpg",
        name: "Muntajat",
        numberOfFavorites: 0,
        website: "www.muntajat.com",
      ),
      MediaPartnerModel(
        id: '3',
        contactNumber: "222222222",
        emailAddress: "tasnee@test.com",
        isFavorite: false,
        logo: "assets/images/tasnee_logo.jpg",
        name: "Tasnee",
        numberOfFavorites: 0,
        website: "www.tasnee.com",
      ),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBEBEB),
      appBar: AppBar(
        title: Text('Media Partners'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          children: [
            SearchBar(),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _mediaPartners.length,
                itemBuilder: (ctx, index) {
                  return MediaPartnerTile(
                    id: _mediaPartners[index].id,
                    name: _mediaPartners[index].name,
                    website: _mediaPartners[index].website,
                    logo: _mediaPartners[index].logo,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}