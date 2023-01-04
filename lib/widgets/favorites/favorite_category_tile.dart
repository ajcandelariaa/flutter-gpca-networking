import 'package:flutter/material.dart';

class FavoriteCategoryTile extends StatelessWidget {
  final String category;
  final IconData icon;
  final String routeName;
  final int numberOfFavorites;
  dynamic favoriteLists;

  FavoriteCategoryTile({
    required this.category,
    required this.icon,
    required this.routeName,
    required this.numberOfFavorites,
    required this.favoriteLists,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(routeName, arguments: favoriteLists),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        margin: const EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
            color: Color(0xFFD9D9D9), borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  size: 35,
                  color: Theme.of(context).primaryColor,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  category,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Theme.of(context).primaryColor),
                ),
              ],
            ),
            Container(
              width: 35,
              height: 35,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(numberOfFavorites.toString()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
