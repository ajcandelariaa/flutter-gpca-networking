import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/sponsor_provider.dart';
import 'package:gpca_networking/widgets/sponsors/featured_sponsor_category_tile.dart';
import 'package:provider/provider.dart';

class FeaturedSponsorTile extends StatelessWidget {
  final String type;

  FeaturedSponsorTile({
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    final tierSponsorsCategorized =
        Provider.of<SponsorProvider>(context).featuredSponsorsCategorizedbyType(type);
    return Column(
      children: [
        Container(
          padding:
              const EdgeInsets.all(10),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Theme.of(context).primaryColor,
          ),
          child: Text(
            type.toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 3,
        ),
        for (var item in tierSponsorsCategorized)
          FeaturedSponsorCategoryTile(
            id: item.id,
            eventId: item.eventId,
            name: item.name,
            category: item.sponsorCategory,
            logo: item.logo,
          ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
