import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/sponsor_provider.dart';
import 'package:gpca_networking/widgets/sponsors/tier_sponsor_tile.dart';
import 'package:provider/provider.dart';

class SponsorsTypeTierScreen extends StatelessWidget {
  const SponsorsTypeTierScreen({Key? key}) : super(key: key);
  static const routeName = "/sponsors-type-tier";

  @override
  Widget build(BuildContext context) {
    final tierSponsorsCategory = Provider.of<SponsorProvider>(context).tierSponsorsCategory;
    return Scaffold(
      backgroundColor: Color(0xFFEBEBEB),
      appBar: AppBar(
        title: Text('Tier Sponsors'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: ListView.builder(
          itemCount: tierSponsorsCategory.length,
          itemBuilder: (ctx, index) {
            return TierSponsorTile(
              category: tierSponsorsCategory[index],
            );
          },
        ),
      ),
    );
  }
}
