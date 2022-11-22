import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/sponsor_provider.dart';
import 'package:gpca_networking/widgets/search_bar.dart';
import 'package:gpca_networking/widgets/all_sponsor_tile.dart';
import 'package:provider/provider.dart';

class SponsorsTypeAllScreen extends StatelessWidget {
  const SponsorsTypeAllScreen({Key? key}) : super(key: key);
  static const routeName = "/sponsors-type-all";

  @override
  Widget build(BuildContext context) {
    final sponsors = Provider.of<SponsorProvider>(context).allSponsors;
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
          title: Text('All Sponsors'),
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
                  itemCount: sponsors.length,
                  itemBuilder: (ctx, index) {
                    return AllSponsorTile(
                      id: sponsors[index].id,
                      eventId: sponsors[index].eventId,
                      type: sponsors[index].sponsorType,
                      name: sponsors[index].name,
                      category: sponsors[index].sponsorCategory,
                      logo: sponsors[index].logo,
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