import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/sponsor_provider.dart';
import 'package:gpca_networking/widgets/sponsors/featured_sponsor_tile.dart';
import 'package:provider/provider.dart';

class SponsorsTypeFeaturedScreen extends StatelessWidget {
  const SponsorsTypeFeaturedScreen({Key? key}) : super(key: key);
  static const routeName = "/sponsors-type-featured";

  @override
  Widget build(BuildContext context) {
    final featuredSponsorsType = Provider.of<SponsorProvider>(context).featuredSponsorsType;
    return Scaffold(
      backgroundColor: Color(0xFFEBEBEB),
      appBar: AppBar(
        title: Text('Featured Sponsors'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: ListView.builder(
          itemCount: featuredSponsorsType.length,
          itemBuilder: (ctx, index) {
            return FeaturedSponsorTile(
              type: featuredSponsorsType[index],
            );
          },
        ),
      ),
    );
  }
}
