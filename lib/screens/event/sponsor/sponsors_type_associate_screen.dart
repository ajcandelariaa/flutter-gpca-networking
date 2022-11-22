import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/sponsor_provider.dart';
import 'package:gpca_networking/widgets/associate_sponsor_tile.dart';
import 'package:gpca_networking/widgets/search_bar.dart';
import 'package:gpca_networking/widgets/all_sponsor_tile.dart';
import 'package:provider/provider.dart';

class SponsorsTypeAssociateScreen extends StatelessWidget {
  const SponsorsTypeAssociateScreen({Key? key}) : super(key: key);
  static const routeName = "/sponsors-type-associate";

  @override
  Widget build(BuildContext context) {
    final associateSponsors = Provider.of<SponsorProvider>(context).associateSponsors;
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
          title: Text('Associate Sponsors'),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: associateSponsors.length,
                  itemBuilder: (ctx, index) {
                    return AssociateSponsorTile(
                      id: associateSponsors[index].id,
                      eventId: associateSponsors[index].eventId,
                      type: associateSponsors[index].sponsorType,
                      name: associateSponsors[index].name,
                      category: associateSponsors[index].sponsorCategory,
                      logo: associateSponsors[index].logo,
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