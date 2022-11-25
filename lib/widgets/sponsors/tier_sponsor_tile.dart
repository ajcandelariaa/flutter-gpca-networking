import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/sponsor_provider.dart';
import 'package:gpca_networking/widgets/sponsors/tier_sponsor_category_tile.dart';
import 'package:provider/provider.dart';

class TierSponsorTile extends StatelessWidget {
  final String category;

  TierSponsorTile({
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    final tierSponsorsCategorized =
        Provider.of<SponsorProvider>(context).tierSponsorsCategorized(category);
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
            category.toUpperCase(),
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
          TierSponsorCategoryTile(
            id: item.id,
            eventId: item.eventId,
            name: item.name,
            website: item.website,
            logo: item.logo,
          ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
