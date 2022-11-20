import 'package:flutter/material.dart';
import 'package:gpca_networking/models/media_partner_model.dart';
import 'package:gpca_networking/providers/media_partner_provider.dart';
import 'package:gpca_networking/widgets/media_partner_tile.dart';
import 'package:gpca_networking/widgets/search_bar.dart';
import 'package:provider/provider.dart';

class MediaPartnersScreen extends StatelessWidget {
  MediaPartnersScreen({Key? key}) : super(key: key);
  static const routeName = '/media-partners';
  
  @override
  Widget build(BuildContext context) {
    final mediaPartners = Provider.of<MediaPartnerProvider>(context).mediaPartners;
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
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
                  itemCount: mediaPartners.length,
                  itemBuilder: (ctx, index) {
                    return MediaPartnerTile(
                      id: mediaPartners[index].id,
                      eventId: mediaPartners[index].eventId,
                      name: mediaPartners[index].name,
                      website: mediaPartners[index].website,
                      logo: mediaPartners[index].logo,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
